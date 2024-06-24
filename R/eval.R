#' Evaluate input and return all details of evaluation
#'
#' Compare to [eval()], `evaluate` captures all of the
#' information necessary to recreate the output as if you had copied and pasted
#' the code into a R terminal. It captures messages, warnings, errors and
#' output, all correctly interleaved in the order in which they occured. It
#' stores the final result, whether or not it should be visible, and the
#' contents of the current graphics device.
#'
#' @export
#' @param input input object to be parsed and evaluated.  May be a string, file
#'   connection or function.  Passed on to [parse_all()].
#' @param envir environment in which to evaluate expressions.
#' @param enclos when `envir` is a list or data frame, this is treated as
#'   the parent environment to `envir`.
#' @param debug if `TRUE`, displays information useful for debugging,
#'   including all output that evaluate captures.
#' @param stop_on_error A number between 0 and 2 that controls what happens
#'   when the code errors:
#' 
#'   * If `0`, the default, will continue running all code, just as if you'd
#'     pasted the code into the command line.
#'   * If `1`, evaluation will stop on first error without signaling the error, 
#'     and you will get back all results up to that point. 
#'   * If `2`, evaluation will halt on first error and you will get back no 
#'     results.
#' @param keep_warning,keep_message whether to record warnings and messages; if
#'   `FALSE`, messages will be suppressed; if `NA`, they will not be captured
#'   (normally they will be sent to the console). Note that if the environment
#'   variable `R_EVALUATE_BYPASS_MESSAGES` is set to true, these arguments will
#'   always be set to `NA`, meaning that messages will not be captured by this
#'   function.
#' @param log_echo,log_warning If `TRUE`, will immediately log code and
#'   warnings (respectively) to `stderr`.
#' @param new_device if `TRUE`, will open a new graphics device and
#'   automatically close it after completion. This prevents evaluation from
#'   interfering with your existing graphics environment.
#' @param output_handler an instance of [output_handler()] that
#'   processes the output from the evaluation. The default simply prints the
#'   visible return values.
#' @param filename string overrriding the [base::srcfile()] filename.
#' @param include_timing Deprecated. 
#' @import graphics grDevices utils
evaluate <- function(input,
                     envir = parent.frame(),
                     enclos = NULL,
                     debug = FALSE,
                     stop_on_error = 0L,
                     keep_warning = TRUE,
                     keep_message = TRUE,
                     log_echo = FALSE,
                     log_warning = FALSE,
                     new_device = TRUE,
                     output_handler = NULL,
                     filename = NULL,
                     include_timing = FALSE) {
  
  on_error <- check_stop_on_error(stop_on_error)

  # if this env var is set to true, always bypass messages
  if (env_var_is_true('R_EVALUATE_BYPASS_MESSAGES')) {
    keep_message <- NA 
    keep_warning <- NA
  }

  output_handler <- output_handler %||% default_output_handler

  if (isTRUE(include_timing)) {
    warning("`evaluate(include_timing)` is deprecated")
  }

  if (on_error != "error") {
    error <- NULL
    tryCatch(
      parsed <- parse_all(input, filename),
      error = function(cnd) {
        error <<- cnd
      }
    )
    if (!is.null(error)) {
      source <- new_source(input, expression(), output_handler$source)
      output_handler$error(error)
      # error$call <- NULL  # the call is unlikely to be useful
      return(new_evaluation(list(source, error)))
    }
  } else {
    parsed <- parse_all(input, filename)
  }

  if (is.list(envir)) {
    envir <- list2env(envir, parent = enclos %||% parent.frame())
  }
  local_inject_funs(envir)

  # Capture output
  watcher <- watchout(output_handler, new_device = new_device, debug = debug)

  for (i in seq_len(nrow(parsed))) {
    if (log_echo || debug) {
      cat_line(parsed$src[[i]], file = stderr())
    }
    evaluate_top_level_expression(
      exprs = parsed$expr[[i]],
      src = parsed$src[[i]],
      watcher = watcher,
      envir = envir,
      use_try = on_error != "error",
      keep_warning = keep_warning,
      keep_message = keep_message,
      log_warning = log_warning,
      output_handler = output_handler
    )
    watcher$check_devices()

    if (on_error == "stop" && watcher$has_errored()) {
      break
    }
  }

  # Always capture last plot, even if incomplete
  watcher$capture_plot(TRUE)

  watcher$get()
}

evaluate_top_level_expression <- function(exprs,
                                          src,
                                          watcher,
                                          envir = parent.frame(),
                                          use_try = FALSE,
                                          keep_warning = TRUE,
                                          keep_message = TRUE,
                                          log_warning = FALSE,
                                          output_handler = new_output_handler()) {
  stopifnot(is.expression(exprs))

  source <- new_source(src, exprs[[1]], output_handler$source)
  if (!is.null(source))
    watcher$push(source)

  handle_output <- function(plot = TRUE) {
    if (plot) watcher$capture_plot()
    watcher$capture_output()
  }

  local_output_handler(function() handle_output(FALSE))
  local_plot_hooks(handle_output)

  # Handlers for warnings, errors and messages
  mHandler <- function(cnd) {
    handle_output()
    if (isTRUE(keep_message)) {
      watcher$push(cnd)
      output_handler$message(cnd)
      invokeRestart("muffleMessage")
    } else if (isFALSE(keep_message)) {
      invokeRestart("muffleMessage")
    }
  }
  wHandler <- function(cnd) {
    # do not handle warnings that shortly become errors
    if (getOption("warn") >= 2) return()
    # do not handle warnings that have been completely silenced
    if (getOption("warn") < 0) return()

    if (log_warning) {
      cat_line(format_condition(cnd), file = stderr())
    }

    handle_output()
    if (isTRUE(keep_warning)) {
      cnd <- reset_call(cnd)
      watcher$push(cnd)
      output_handler$warning(cnd)
      invokeRestart("muffleWarning")
    } else if (isFALSE(keep_warning)) {
      invokeRestart("muffleWarning")
    }
  }
  eHandler <- function(cnd) {
    handle_output()
    if (use_try) {
      cnd <- reset_call(cnd)
      watcher$errored()
      watcher$push(cnd)
      output_handler$error(cnd)
    }
  }

  if (use_try) {
    handle <- function(code) {
      tryCatch(code, error = function(err) {
        list(value = NULL, visible = FALSE)
      })
    }
  } else {
    handle <- force
  }

  user_handlers <- output_handler$calling_handlers
  evaluate_handlers <- list(error = eHandler, warning = wHandler, message = mHandler)
  # The user's condition handlers have priority over ours
  handlers <- c(user_handlers, evaluate_handlers)

  for (expr in exprs) {
    ev <- handle(
      with_handlers(
        withVisible(eval(expr, envir)),
        handlers
      )
    )
    handle_output(TRUE)

    if (show_value(output_handler, ev$visible)) {
      # Ideally we'd evaluate the print() generic in envir in order to find
      # any methods registered in that environment. That, however, is 
      # challenging and only makes a few tests a little simpler so we don't
      # bother.
      pv <- handle(
        with_handlers(
          withVisible(
            handle_value(output_handler, ev$value, ev$visible)
          ),
          handlers
        )
      )
      handle_output(TRUE)
      # If the return value is visible, save the value to the output
      if (pv$visible) {
        watcher$push(pv$value)
      }
    }
  }

  invisible()
}

with_handlers <- function(code, handlers) {
  if (!is.list(handlers)) {
    stop("`handlers` must be a list", call. = FALSE)
  }

  call <- as.call(c(quote(withCallingHandlers), quote(code), handlers))
  eval(call)
}

reset_call <- function(cnd) {
  if (identical(cnd$call, quote(eval(expr, envir)))) {
    cnd$call <- NULL
  }
  cnd
}

check_stop_on_error <- function(x) {
  if (is.numeric(x) && length(x) == 1 && !is.na(x)) {
    if (x == 0L) {
      return("continue")
    } else if (x == 1L) {
      return("stop")
    } else if (x == 2L) {
      return("error")
    }
  }
  stop("`stop_on_error` must be 0, 1, or 2 ", call. = FALSE)
}

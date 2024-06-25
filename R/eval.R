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
#' @param keep_warning,keep_message A single logical value that controls what
#'   happens to warnings and messages.
#' 
#'   * If `TRUE`, the default, warnings and messages will be captured in the
#'     output.
#'   * If `NA`, warnings and messages will not be captured and bubble up to
#'     the calling environment of `evaluate()`.
#'   * If `FALSE`, warnings and messages will be completed supressed and
#'     not shown anywhere.
#'     
#'  Note that setting the envvar `R_EVALUATE_BYPASS_MESSAGES` to `true` will 
#'  force these arguments to be set to `NA`.
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
  on_message <- check_keep(keep_message, "keep_message")
  on_warning <- check_keep(keep_warning, "keep_warning", log_warning)

  output_handler <- output_handler %||% default_output_handler

  if (isTRUE(include_timing)) {
    warning("`evaluate(include_timing)` is deprecated")
  }

  parsed <- parse_all(input, filename, on_error != "error")
  if (inherits(err <- attr(parsed, 'PARSE_ERROR'), 'error')) {
    source <- new_source(parsed$src, expression(), output_handler$source)
    output_handler$error(err)
    err$call <- NULL  # the call is unlikely to be useful
    return(new_evaluation(list(source, err)))
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
    continue <- withRestarts(
      {
        evaluate_top_level_expression(
          exprs = parsed$expr[[i]],
          src = parsed$src[[i]],
          watcher = watcher,
          envir = envir,
          on_error = on_error,
          on_warning = on_warning,
          on_message = on_message,
              output_handler = output_handler
        )
        TRUE
      },
      eval_continue = function() TRUE,
      eval_stop = function() FALSE,
      eval_error = function(cnd) stop(cnd)
    )
    watcher$check_devices()

    if (!continue) {
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
                                          on_error = "continue",
                                          on_warning,
                                          on_message,
                                          log_warning = FALSE,
                                          output_handler = new_output_handler()) {
  stopifnot(is.expression(exprs))

  source <- new_source(src, exprs[[1]], output_handler$source)
  if (!is.null(source))
    watcher$push(source)

  local_output_handler(watcher$capture_output)
  local_plot_hooks(watcher$capture_plot_and_output)

  # Handlers for warnings, errors and messages
  mHandler <- function(cnd) {
    watcher$capture_plot_and_output()
    
    if (on_message$capture) {
      watcher$push(cnd)
      output_handler$message(cnd)
    }
    if (on_message$silence) {
      invokeRestart("muffleMessage")
    }
  }
  wHandler <- function(cnd) {
    # do not handle warnings that shortly become errors
    if (getOption("warn") >= 2) return()
    # do not handle warnings that have been completely silenced
    if (getOption("warn") < 0) return()

    watcher$capture_plot_and_output()
    if (on_warning$capture) {
      cnd <- reset_call(cnd)
      watcher$push(cnd)
      output_handler$warning(cnd)
    }
    if (on_warning$silence) {
      invokeRestart("muffleWarning")
    }
  }
  eHandler <- function(cnd) {
    watcher$capture_plot_and_output()
    
    cnd <- reset_call(cnd)
    watcher$push(cnd)
    
    switch(on_error,
      continue = invokeRestart("eval_continue"),
      stop = invokeRestart("eval_stop"),
      error = invokeRestart("eval_error", cnd)
    )
  }

  user_handlers <- output_handler$calling_handlers
  evaluate_handlers <- list(error = eHandler, warning = wHandler, message = mHandler)
  # The user's condition handlers have priority over ours
  handlers <- c(user_handlers, evaluate_handlers)

  for (expr in exprs) {
    ev <- with_handlers(
      withVisible(eval(expr, envir)),
      handlers
    )
    watcher$capture_plot_and_output()

    if (show_value(output_handler, ev$visible)) {
      # Ideally we'd evaluate the print() generic in envir in order to find
      # any methods registered in that environment. That, however, is 
      # challenging and only makes a few tests a little simpler so we don't
      # bother.
      pv <- with_handlers(
        withVisible(
          handle_value(output_handler, ev$value, ev$visible)
        ),
        handlers
      )
      watcher$capture_plot_and_output()
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
  stop("`stop_on_error` must be 0, 1, or 2.", call. = FALSE)
}

check_keep <- function(x, arg, log = FALSE) {
  if (!is.logical(x) || length(x) != 1) {
    stop("`", arg, "` must be TRUE, FALSE, or NA.", call. = FALSE)
  }

  list(
    capture = isTRUE(x),
    silence = !is.na(x) && !log
  )
}

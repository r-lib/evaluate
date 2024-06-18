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
#' @param stop_on_error if `2`, evaluation will halt on first error and you
#'   will get no results back. If `1`, evaluation will stop on first error
#'   without signaling the error, and you will get back all results up to that
#'   point. If `0` will continue running all code, just as if you'd pasted
#'   the code into the command line.
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
#' @param include_timing if `TRUE`, evaluate will wrap each input
#'   expression in `system.time()`, which will be accessed by following
#'   `replay()` call to produce timing information for each evaluated
#'   command.
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
                     output_handler = default_output_handler,
                     filename = NULL,
                     include_timing = FALSE) {
  stop_on_error <- as.integer(stop_on_error)
  stopifnot(length(stop_on_error) == 1)

  parsed <- parse_all(input, filename, stop_on_error != 2L)
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

  if (new_device) {
    # Ensure we have a graphics device available for recording, but choose
    # one that's available on all platforms and doesn't write to disk
    pdf(file = NULL)
    dev.control(displaylist = "enable")
    dev <- dev.cur()
    on.exit(dev.off(dev))
  }
  # record the list of current devices
  devs <- .env$dev_list; on.exit(.env$dev_list <- devs, add = TRUE)
  devn <- length(.env$dev_list <- dev.list())
  dev <- dev.cur()

  # clean up the last_plot object after an evaluate() call (cf yihui/knitr#722)
  on.exit(assign("last_plot", NULL, envir = environment(plot_snapshot)), add = TRUE)

  # if this env var is set to true, always bypass messages
  if (tolower(Sys.getenv('R_EVALUATE_BYPASS_MESSAGES')) == 'true')
    keep_message = keep_warning = NA

  # Capture output
  watcher <- watchout(output_handler, debug = debug)

  out <- vector("list", nrow(parsed))
  for (i in seq_along(out)) {
    if (debug) {
      message(parsed$src[[i]])
    }

    # if dev.off() was called, make sure to restore device to the one opened by
    # evaluate() or existed before evaluate()
    if (length(dev.list()) < devn) dev.set(dev)
    devn <- length(dev.list())

    out[[i]] <- evaluate_top_level_expression(
      exprs = parsed$expr[[i]],
      src = parsed$src[[i]],
      watcher = watcher,
      envir = envir,
      last = i == length(out),
      use_try = stop_on_error != 2L,
      keep_warning = keep_warning,
      keep_message = keep_message,
      log_echo = log_echo,
      log_warning = log_warning,
      output_handler = output_handler,
      include_timing = include_timing
    )

    if (stop_on_error > 0L) {
      errs <- vapply(out[[i]], is.error, logical(1))

      if (!any(errs)) next
      if (stop_on_error == 1L) break
    }
  }

  is_empty <- vapply(out, identical, list(NULL), FUN.VALUE = logical(1))
  out <- out[!is_empty]

  out <- unlist(out, recursive = FALSE, use.names = FALSE)
  new_evaluation(out)
}

evaluate_top_level_expression <- function(exprs,
                                          src,
                                          watcher,
                                          envir = parent.frame(),
                                          last = FALSE,
                                          use_try = FALSE,
                                          keep_warning = TRUE,
                                          keep_message = TRUE,
                                          log_echo = FALSE,
                                          log_warning = FALSE,
                                          output_handler = new_output_handler(),
                                          include_timing = FALSE) {
  stopifnot(is.expression(exprs))

  if (log_echo && !is.null(src)) {
    cat(src, "\n", sep = "", file = stderr())
  }

  source <- new_source(src, exprs[[1]], output_handler$source)
  output <- list(source)

  dev <- dev.cur()
  handle_output <- function(plot = TRUE, incomplete_plots = FALSE) {
    # if dev.cur() has changed, we should not record plots any more
    plot <- plot && identical(dev, dev.cur())
    out <- watcher(plot, incomplete_plots)
    output <<- c(output, out)
  }

  local_output_handler(function() handle_output(FALSE))

  # Hooks to capture plot creation
  hook_list <- list(
    persp = handle_output,
    before.plot.new = handle_output,
    before.grid.newpage = handle_output
  )
  set_hooks(hook_list)
  on.exit(remove_hooks(hook_list), add = TRUE)

  # Handlers for warnings, errors and messages
  wHandler <- function(wn) {
    if (log_warning) {
      cat(format_condition(wn), "\n", sep = "", file = stderr())
    }
    if (is.na(keep_warning)) return()

    # do not handle the warning as it will be raised as error after
    if (getOption("warn") >= 2) return()

    if (keep_warning && getOption("warn") >= 0) {
      handle_output()
      output <<- c(output, list(wn))
      output_handler$warning(wn)
    }
    invokeRestart("muffleWarning")
  }
  eHandler <- function(e) {
    handle_output()
    if (use_try) {
      output <<- c(output, list(e))
      output_handler$error(e)
    }
  }
  mHandler <- function(m) {
    handle_output()
    if (isTRUE(keep_message)) {
      output <<- c(output, list(m))
      output_handler$message(m)
      invokeRestart("muffleMessage")
    } else if (isFALSE(keep_message)) {
      invokeRestart("muffleMessage")
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
  if (include_timing) {
    timing_fn <- function(x) system.time(x)[1:3]
  } else {
    timing_fn <- function(x) {x; NULL}
  }

  user_handlers <- output_handler$calling_handlers
  evaluate_handlers <- list(error = eHandler, warning = wHandler, message = mHandler)
  handlers <- c(user_handlers, evaluate_handlers)

  for (expr in exprs) {
    srcindex <- length(output)
    time <- timing_fn(
      ev <- handle(
        with_handlers(
          withVisible(eval(expr, envir)),
          handlers
        )
      )
    )
    handle_output(TRUE)
    if (!is.null(time))
      attr(output[[srcindex]]$src, 'timing') <- time

    if (show_value(output_handler, ev$visible)) {
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
      if (pv$visible) output <- c(output, list(pv$value))
    }
  }
  # Always capture last plot, even if incomplete
  if (last) {
    handle_output(TRUE, TRUE)
  }

  output
}

with_handlers <- function(code, calling_handlers) {
  if (!is.list(calling_handlers)) {
    stop("`calling_handlers` must be a list", call. = FALSE)
  }

  call <- as.call(c(
    quote(withCallingHandlers),
    quote(code),
    calling_handlers
  ))
  eval(call)
}

new_evaluation <- function(x) {
  # Needs explicit list for backwards compatibility
  structure(x, class = c("evaluate_evaluation", "list"))
}

#' @export
print.evaluate_evaluation <- function(x, ...) {
  cat_line("<evaluation>")
  for (component in x) {
    if (inherits(component, "source")) {
      cat_line("Source code: ")
      cat_line(indent(component$src))
    } else if (is.character(component)) {
      cat_line("Text output: ")
      cat_line(indent(component))
    } else if (inherits(component, "condition")) {
      cat_line("Condition: ")
      cat_line(indent(format_condition(component)))
    } else if (inherits(component, "recordedplot")) {
      dl <- component[[1]]
      cat_line("Plot [", length(dl), "]:")
      for (call in dl) {
        fun_call <- call[[2]][[1]]
        if (hasName(fun_call, "name")) {
          cat_line("  <base> ", fun_call$name, "()")
        } else {
          cat_line("  <grid> ", deparse(fun_call))
        }
      }
    } else {
      cat_line("Other: ")
      cat(" "); str(component, indent.str = "  ")
    }
  }

  invisible(x)
}

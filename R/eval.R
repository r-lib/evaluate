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
#' @param stop_on_error  if `2`, evaluation will halt on first error and you
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
  # if this env var is set to true, always bypass messages
  if (tolower(Sys.getenv('R_EVALUATE_BYPASS_MESSAGES')) == 'true')
    keep_message = keep_warning = NA

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

  # Capture output
  watcher <- watchout(
    output = growable(output_handler),
    new_device = new_device,
    debug = debug
  )

  # The user's condition handlers have priority over ours
  user_handlers <- output_handler$calling_handlers
  evaluate_handlers <- evaluate_handlers(
    watcher,
    keep_warning = keep_warning,
    keep_message = keep_message,
    log_warning = log_warning, 
    stop_on_error = stop_on_error
  )
  handlers <- c(user_handlers, evaluate_handlers)

  for (i in seq_len(nrow(parsed))) {
    src <- parsed$src[[i]]
    tle <- parsed$expr[[i]]

    if (log_echo || debug) {
      cat_line(src, file = stderr())
    }
    watcher$add_source(src, tle[[1]])

    continue <- with_handlers(
      withRestarts(
        {
          for (expr in tle) {
            ev <- withVisible(eval(expr, envir))
            watcher$capture_plot_and_output()
            
            if (show_value(output_handler$value, ev$visible)) {
              # Ideally we'd evaluate the print() generic in envir in order to find
              # any methods registered in that environment. That, however, is 
              # challenging and only makes a few tests a little simpler so we don't
              # bother.
              handle_value(output_handler$value, ev$value, ev$visible)
              watcher$capture_plot_and_output()
            }
          }
          TRUE
        },
        eval_continue = function() TRUE,
        eval_stop = function() FALSE
      ),
      handlers
    )
    watcher$check_devices()

    if (!continue) {
      break
    }
  }

  # Always capture last plot, even if incomplete
  watcher$capture_plot(incomplete = TRUE)

  watcher$get()
}

evaluate_handlers <- function(watcher,
                              keep_warning = TRUE,
                              keep_message = TRUE,
                              log_warning = FALSE,
                              stop_on_error = 0L) {
  
  list(
    message = function(cnd) {
      watcher$capture_plot_and_output()
      if (isTRUE(keep_message)) {
        watcher$add_output(cnd)
        invokeRestart("muffleMessage")
      } else if (isFALSE(keep_message)) {
        invokeRestart("muffleMessage")
      }
    },
    warning = function(cnd) {
      if (log_warning) {
        cat(format_condition(cnd), "\n", sep = "", file = stderr())
      }
      if (is.na(keep_warning)) return()

      # do not handle the warning as it will be raised as error after
      if (getOption("warn") >= 2) return()

      watcher$capture_plot_and_output()
      if (keep_warning && getOption("warn") >= 0) {
        watcher$add_output(cnd)
      }
      invokeRestart("muffleWarning")
    },
    error = function(cnd) {
      watcher$capture_plot_and_output()
      watcher$add_output(cnd)

      if (stop_on_error == 0L) {
        invokeRestart("eval_continue")
      } else if (stop_on_error == 1L) {
        invokeRestart("eval_stop")
      }
    }
  )
}

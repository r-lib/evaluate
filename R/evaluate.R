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
#' 
#'   This will be force to `TRUE` if env var `ACTIONS_STEP_DEBUG` is
#'   `true`, as when debugging a failing GitHub Actions workflow.
#' @param new_device if `TRUE`, will open a new graphics device and
#'   automatically close it after completion. This prevents evaluation from
#'   interfering with your existing graphics environment.
#' @param output_handler an instance of [output_handler()] that
#'   processes the output from the evaluation. The default simply prints the
#'   visible return values.
#' @param filename string overrriding the [base::srcfile()] filename.
#' @param include_timing Deprecated. 
#' @import graphics grDevices utils
#' @examples
#' evaluate(c(
#'   "1 + 1", 
#'   "2 + 2"
#' ))
#' 
#' # Not that's there's a difference in output between putting multiple 
#' # expressions on one line vs spreading them across multiple lines
#' evaluate("1;2;3")
#' evaluate(c("1", "2", "3"))
#' 
#' # This also affects how errors propagate, matching the behaviour
#' # of the R console
#' evaluate("1;stop(2);3")
#' evaluate(c("1", "stop(2)", "3"))
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
  if (env_var_is_true("ACTIONS_STEP_DEBUG")) {
    log_warning <- TRUE
    log_echo <- TRUE
  }

  on_message <- check_keep(keep_message, "keep_message")
  on_warning <- check_keep(keep_warning, "keep_warning", log_warning)

  output_handler <- output_handler %||% evaluate_default_output_handler

  if (isTRUE(include_timing)) {
    warning("`evaluate(include_timing)` is deprecated")
  }

  # Capture output
  watcher <- watchout(output_handler, new_device = new_device, debug = debug)

  if (on_error != "error" && !can_parse(input)) {
    err <- tryCatch(parse(text = input), error = function(cnd) cnd) 
    watcher$push_source(input, expression())
    watcher$push(err)
    return(watcher$get())
  }
  
  parsed <- parse_all(input, filename = filename)
  # "Transpose" parsed so we get a list that's easier to iterate over
  tles <- Map(
    function(src, exprs) list(src = src, exprs = exprs),
    parsed$src, parsed$expr
  )

  if (is.list(envir)) {
    envir <- list2env(envir, parent = enclos %||% parent.frame())
  }
  local_inject_funs(envir)
  
  # Handlers for warnings, errors and messages
  user_handlers <- output_handler$calling_handlers
  evaluate_handlers <- condition_handlers(
    watcher,
    on_error = on_error,
    on_warning = on_warning,
    on_message = on_message
  )
  # The user's condition handlers have priority over ours
  handlers <- c(user_handlers, evaluate_handlers)
  
  context <- function() {
    do <- NULL # silence R CMD check note

    for (tle in tles) {
      watcher$push_source(tle$src, tle$exprs)
      if (debug || log_echo) {
        cat_line(tle$src, file = stderr())
      }
  
      continue <- withRestarts(
        with_handlers(
          {
            for (expr in tle$exprs) {
              # Using `delayedAssign()` as an interface to the C-level function
              # `Rf_eval()`. Unlike the R-level `eval()`, this doesn't create
              # an unwinding scope.
              eval(bquote(delayedAssign("do", .(expr), eval.env = envir)))
              
              ev <- withVisible(do)
              watcher$capture_plot_and_output()
              watcher$print_value(ev$value, ev$visible, envir)
            }
            TRUE
          },
          handlers
        ),
        eval_continue = function() TRUE,
        eval_stop = function() FALSE,
        eval_error = function(cnd) stop(cnd)
      )
      watcher$check_devices()
  
      if (!continue) {
        break
      }
    }
  }

  # Here we use `eval()` to create an unwinding scope for `envir`.
  # We call ourselves back immediately once the scope is created. 
  eval(as.call(list(context)), envir)
  watcher$capture_output()

  # Always capture last plot, even if incomplete
  watcher$capture_plot(TRUE)

  watcher$get()
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

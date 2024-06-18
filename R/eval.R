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

  if (is.null(enclos)) {
    enclos <- if (is.list(envir) || is.pairlist(envir)) parent.frame() else baseenv()
  }

  if (new_device) {
    # Start new graphics device and clean up afterwards
    if (identical(grDevices::pdf, getOption("device"))) {
      dev.new(file = NULL)
    } else dev.new()
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

  out <- vector("list", nrow(parsed))
  for (i in seq_along(out)) {
    # if dev.off() was called, make sure to restore device to the one opened by
    # evaluate() or existed before evaluate()
    if (length(dev.list()) < devn) dev.set(dev)
    devn <- length(dev.list())

    expr <- parsed$expr[[i]]
    if (!is.null(expr))
      expr <- as.expression(expr)
    out[[i]] <- evaluate_call(
      expr,
      parsed$src[[i]],
      envir = envir,
      enclos = enclos,
      debug = debug,
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

evaluate_call <- function(call,
                          src = NULL,
                          envir = parent.frame(),
                          enclos = NULL,
                          debug = FALSE,
                          last = FALSE,
                          use_try = FALSE,
                          keep_warning = TRUE,
                          keep_message = TRUE,
                          log_echo = FALSE,
                          log_warning = FALSE,
                          output_handler = new_output_handler(),
                          include_timing = FALSE) {
  if (debug) message(src)

  if (is.null(call) && !last) {
    source <- new_source(src, call[[1]], output_handler$source)
    return(list(source))
  }
  stopifnot(is.call(call) || is.language(call) || is.atomic(call) || is.null(call))

  # Capture output
  w <- watchout(debug)
  on.exit(w$close())

  # Capture error output from try() (#88)
  old_try_outfile <- options(try.outFile = w$get_con())
  on.exit(options(old_try_outfile), add = TRUE)

  if (log_echo && !is.null(src)) {
    cat(src, "\n", sep = "", file = stderr())
  }

  source <- new_source(src, call[[1]], output_handler$source)
  output <- list(source)

  dev <- dev.cur()
  handle_output <- function(plot = FALSE, incomplete_plots = FALSE) {
    # if dev.cur() has changed, we should not record plots any more
    plot <- plot && identical(dev, dev.cur())
    out <- w$get_new(plot, incomplete_plots,
      output_handler$text, output_handler$graphics)
    output <<- c(output, out)
  }

  flush_old <- .env$flush_console; on.exit({
    .env$flush_console <- flush_old
  }, add = TRUE)
  .env$flush_console <- function() handle_output(FALSE)

  # Hooks to capture plot creation
  capture_plot <- function() {
    handle_output(TRUE)
  }
  hook_list <- list(
    persp = capture_plot,
    before.plot.new = capture_plot,
    before.grid.newpage = capture_plot
  )
  set_hooks(hook_list)
  on.exit(remove_hooks(hook_list), add = TRUE)

  handle_condition <- function(cond) {
    handle_output()
    output <<- c(output, list(cond))
  }

  # Handlers for warnings, errors and messages
  wHandler <- function(wn) {
    if (log_warning) {
      cat(format_condition(wn), "\n", sep = "", file = stderr())
    }
    if (is.na(keep_warning)) return()

    # do not handle the warning as it will be raised as error after
    if (getOption("warn") >= 2) return()

    if (keep_warning && getOption("warn") >= 0) {
      handle_condition(wn)
      output_handler$warning(wn)
    }
    invokeRestart("muffleWarning")
  }
  eHandler <- if (use_try) function(e) {
    handle_condition(e)
    output_handler$error(e)
  } else identity
  mHandler <- if (is.na(keep_message)) identity else function(m) {
    if (keep_message) {
      handle_condition(m)
      output_handler$message(m)
    }
    invokeRestart("muffleMessage")
  }

  ev <- list(value = NULL, visible = FALSE)

  if (use_try) {
    handle <- function(f) try(f, silent = TRUE)
  } else {
    handle <- force
  }
  value_handler <- output_handler$value
  if (include_timing) {
    timing_fn <- function(x) system.time(x)[1:3]
  } else {
    timing_fn <- function(x) {x; NULL};
  }

  if (length(funs <- .env$inject_funs)) {
    funs_names <- names(funs)
    funs_new <- !vapply(funs_names, exists, logical(1), envir, inherits = FALSE)
    funs_names <- funs_names[funs_new]
    funs <- funs[funs_new]
    on.exit(rm(list = funs_names, envir = envir), add = TRUE)
    for (i in seq_along(funs_names)) assign(funs_names[i], funs[[i]], envir)
  }

  user_handlers <- output_handler$calling_handlers

  multi_args <- length(formals(value_handler)) > 1
  for (expr in call) {
    srcindex <- length(output)
    time <- timing_fn(handle(
      ev <- withCallingHandlers(
        withVisible(eval_with_user_handlers(expr, envir, enclos, user_handlers)),
        warning = wHandler,
        error = eHandler,
        message = mHandler
      )
    ))
    handle_output(TRUE)
    if (!is.null(time))
      attr(output[[srcindex]]$src, 'timing') <- time

    # If visible or the value handler has multi args, process and capture output
    if (ev$visible || multi_args) {
      pv <- list(value = NULL, visible = FALSE)
      value_fun <- if (multi_args) value_handler else {
        function(x, visible) value_handler(x)
      }
      handle(pv <- withCallingHandlers(withVisible(
        value_fun(ev$value, ev$visible)
      ), warning = wHandler, error = eHandler, message = mHandler))
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

eval_with_user_handlers <- function(expr, envir, enclos, calling_handlers) {
  if (!length(calling_handlers)) {
    return(eval(expr, envir, enclos))
  }

  if (!is.list(calling_handlers)) {
    stop("`calling_handlers` must be a list", call. = FALSE)
  }

  call <- as.call(c(
    quote(withCallingHandlers),
    quote(eval(expr, envir, enclos)),
    calling_handlers
  ))

  eval(call)
}

#' Inject functions into the environment of `evaluate()`
#'
#' Create functions in the environment specified in the `envir` argument of
#' [evaluate()]. This can be helpful if you want to substitute certain
#' functions when evaluating the code. To make sure it does not wipe out
#' existing functions in the environment, only functions that do not exist in
#' the environment are injected.
#' @param ... Named arguments of functions. If empty, previously injected
#'   functions will be emptied.
#' @note For expert use only. Do not use it unless you clearly understand it.
#' @keywords internal
#' @examples library(evaluate)
#' # normally you cannot capture the output of system
#' evaluate("system('R --version')")
#'
#' # replace the system() function
#' inject_funs(system = function(...) cat(base::system(..., intern = TRUE), sep = '\n'))
#'
#' evaluate("system('R --version')")
#'
#' inject_funs()  # empty previously injected functions
#' @export
inject_funs <- function(...) {
  funs <- list(...)
  funs <- funs[names(funs) != '']
  .env$inject_funs <- Filter(is.function, funs)
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

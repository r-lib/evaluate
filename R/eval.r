#' Evaluate input and return all details of evaluation.
#'
#' Compare to \code{\link{eval}}, \code{evaluate} captures all of the
#' information necessary to recreate the output as if you had copied and
#' pasted the code into a R terminal. It captures messages, warnings, errors
#' and output, all correctly interleaved in the order in which they occured.
#' It stores the final result, whether or not it should be visible, and the
#' contents of the current graphics device.
#'
#' @export
#' @param input input object to be parsed an evaluated.  Maybe a string,
#'   file connection or function.
#' @param envir environment in which to evaluate expressions
#' @param enclos when \code{envir} is a list or data frame, this is treated
#'   as the parent environment to \code{envir}.
#' @param debug if \code{TRUE}, displays information useful for debugging,
#'   including all output that evaluate captures
#' @param stop_on_error if \code{2}, evaluation will stop on first error and you
#'   will get no results back. If \code{1}, evaluation will stop on first error,
#'   but you will get back all results up to that point. If \code{0} will
#'   continue running all code, just as if you'd pasted the code into the
#'   command line.
#' @param new_device if \code{TRUE}, will open a new graphics device and
#'   automatically close it after completion. This prevents evaluation from
#'   interfering with your existing graphics environment.
#' @param output_handler an instance of \code{\link{output_handler}}
#'   that processes the output from the evaluation. The default simply
#'   prints the visible return values.
#' @import stringr
evaluate <- function(input, envir = parent.frame(), enclos = NULL, debug = FALSE,
                     stop_on_error = 0L, new_device = TRUE,
                     output_handler = new_output_handler()) {
  parsed <- parse_all(input)

  stop_on_error <- as.integer(stop_on_error)
  stopifnot(length(stop_on_error) == 1)

  if (is.null(enclos)) {
    enclos <- if (is.list(envir) || is.pairlist(envir)) parent.frame() else baseenv()
  }

  if (new_device) {
    # Start new graphics device and clean up afterwards
    dev.new()
    dev <- dev.cur()
    on.exit(dev.off(dev))
  }

  out <- vector("list", nrow(parsed))
  for (i in seq_along(out)) {
    expr <- parsed$expr[[i]]
    if (is.list(expr))
      expr <- as.expression(expr)
    out[[i]] <- evaluate_call(
      expr, parsed$src[[i]],
      envir = envir, enclos = enclos, debug = debug, last = i == length(out),
      use_try = stop_on_error != 2L,
      output_handler = output_handler)

    if (stop_on_error > 0L) {
      errs <- vapply(out[[i]], is.error, logical(1))

      if (!any(errs)) next
      if (stop_on_error == 1L) break

      err <- out[[i]][errs][[1]]
      stop(err)
    }
  }

  unlist(out, recursive = FALSE, use.names = FALSE)
}

evaluate_call <- function(call, src = NULL,
                          envir = parent.frame(), enclos = NULL,
                          debug = FALSE, last = FALSE, use_try = FALSE,
                          output_handler = new_output_handler()) {
  if (debug) message(src)

  if (is.null(call)) {
    return(list(new_source(src)))
  }
  stopifnot(is.call(call) || is.language(call) || is.atomic(call))

  # Capture output
  w <- watchout(debug)
  on.exit(w$close())
  source <- new_source(src)
  output_handler$source(source)
  output <- list(source)

  handle_output <- function(plot = FALSE, incomplete_plots = FALSE) {
    out <- w$get_new(plot, incomplete_plots)
    if (!is.null(out$text))
      output_handler$text(out$text)
    if (!is.null(out$graphics))
      output_handler$graphics(out$graphics)
    output <<- c(output, out)
  }

  # Hooks to capture plot creation
  capture_plot <- function() {
    handle_output(TRUE)
  }
  old_hooks <- set_hooks(list(
    before.plot.new = capture_plot,
    before.grid.newpage = capture_plot))
  on.exit(set_hooks(old_hooks, "replace"), add = TRUE)

  handle_condition <- function(cond) {
    handle_output()
    output <<- c(output, list(cond))
  }

  # Handlers for warnings, errors and messages
  wHandler <- function(wn) {
    handle_condition(wn)
    output_handler$warning(wn)
    invokeRestart("muffleWarning")
  }
  eHandler <- function(e) {
    handle_condition(e)
    output_handler$error(e)
    invokeRestart("muffleWarning")
  }
  mHandler <- function(m) {
    handle_condition(m)
    output_handler$message(m)
    invokeRestart("muffleMessage")
  }

  ev <- list(value = NULL, visible = FALSE)

  if (use_try) {
    handle <- function(f) try(f, silent = TRUE)
  } else {
    handle <- force
  }
  handle(ev <- withCallingHandlers(
    withVisible(eval(call, envir, enclos)),
    warning = wHandler, error = eHandler, message = mHandler))
  handle_output(TRUE)

  # If visible, process and capture output
  if (ev$visible) {
    pv <- try(withCallingHandlers(withVisible(output_handler$value(ev$value)),
      warning = wHandler, error = eHandler, message = mHandler), silent = TRUE)
    handle_output(TRUE)
    # If return value visible, print and capture output
    if (pv$visible) {
      try(withCallingHandlers(print(pv$value),
            warning = wHandler, error = eHandler, message = mHandler),
          silent = TRUE)
      handle_output(TRUE)
    }
  }

  # Always capture last plot, even if incomplete
  if (last) {
    handle_output(TRUE, TRUE)
  }

  output
}


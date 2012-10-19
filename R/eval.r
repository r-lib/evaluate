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
#' @import stringr
evaluate <- function(input, envir = parent.frame(), enclos = NULL, debug = FALSE,
                     stop_on_error = 0L, new_device = TRUE, render = print) {
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
    out[[i]] <- evaluate_call(
      as.expression(parsed$expr[[i]]), parsed$src[[i]],
      envir = envir, enclos = enclos, debug = debug, last = i == length(out),
      use_try = stop_on_error != 2L,
      render = render)

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
                          render = print) {
  if (debug) message(src)

  if (is.null(call)) {
    return(list(new_source(src)))
  }
  stopifnot(is.call(call) || is.language(call) || is.atomic(call))

  if (!is.null(render)) {
    stopifnot(length(render) == 1L)
    render <- match.fun(render)
    stopifnot(length(formals(render)) >= 1L)
  }

  # Capture output
  w <- watchout(debug)
  on.exit(w$close())
  output <- list(new_source(src))

  # Hooks to capture plot creation
  capture_plot <- function() {
    output <<- c(output, w$get_new(TRUE))
  }
  old_hooks <- set_hooks(list(
    before.plot.new = capture_plot,
    before.grid.newpage = capture_plot))
  on.exit(set_hooks(old_hooks, "replace"), add = TRUE)

  # Handlers for warnings, errors and messages
  wHandler <- function(wn) {
    output <<- c(output, w$get_new(), list(wn))
    invokeRestart("muffleWarning")
  }
  eHandler <- function(e) {
    output <<- c(output, w$get_new(), list(e))
  }
  mHandler <- function(m) {
    output <<- c(output, w$get_new(), list(m))
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
  output <- c(output, w$get_new(TRUE))

  # If visible, print and capture output
  if (ev$visible) {
    try(withCallingHandlers(render(ev$value), warning = wHandler,
      error = eHandler, message = mHandler), silent = TRUE)
    output <- c(output, w$get_new(TRUE))
  }

  # Always capture last plot, even if incomplete
  if (last) {
    output <- c(output, w$get_new(TRUE, TRUE))
  }

  output
}


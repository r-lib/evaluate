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
#' @param stop_on_error if \code{TRUE}, evaluation will stop on first error.  If
#'   \code{FALSE} will continue running all code, just as if you'd pasted the
#'   code into the command line.
#' @import stringr
evaluate <- function(input, envir = parent.frame(), enclos = NULL, debug = FALSE,
                     stop_on_error = FALSE) {
  parsed <- parse_all(input)

  if (is.null(enclos)) {
    enclos <- if (is.list(envir) || is.pairlist(envir)) parent.frame() else baseenv()
  }

  out <- vector("list", nrow(parsed))
  for (i in seq_along(out)) {
    out[[i]] <- evaluate_call(parsed$expr[[i]][[1]], parsed$src[[i]],
      envir = envir, enclos = enclos, debug = debug)

    if (stop_on_error) {
      errs <- vapply(out[[i]], is.error, logical(1))
      if (any(errs)) break
    }
  }

  unlist(out, recursive = FALSE, use.names = FALSE)
}

evaluate_call <- function(call, src = NULL, envir = parent.frame(),
                          enclos = NULL, debug = FALSE) {
  if (debug) message(src)

  if (is.null(call)) {
    return(list(new_source(src)))
  }
  stopifnot(is.call(call) || is.language(call) || is.atomic(call))

  # Capture output
  w <- watchout(debug)
  on.exit(w$close())
  output <- list(new_source(src))

  # Hooks to capture plot creation
  capture_plot <- function() {
    output <<- c(output, w$get_new())
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
  try(ev <- withCallingHandlers(
    withVisible(eval(call, envir, enclos)),
    warning = wHandler, error = eHandler, message = mHandler), silent = TRUE
  )
  output <- c(output, w$get_new())

  # If visible, print and capture output
  if (ev$visible) {
    render <- if (isS4(ev$value)) show else print

    try(withCallingHandlers(render(ev$value), warning = wHandler,
      error = eHandler, message = mHandler), silent = TRUE)
    output <- c(output, w$get_new())
  }

  output
}


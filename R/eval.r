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

  out <- vector("list", nrow(parsed))
  for (i in seq_along(out)) {
    out[[i]] <- evaluate_call(parsed$expr[[i]], parsed$src[[i]],
      envir = envir, enclos = enclos, debug = debug)
  }

  unlist(out, recursive = FALSE, use.names = FALSE)
}

evaluate_call <- function(expr, src = NULL, envir = parent.frame(),
                              enclos = NULL, debug = debug) {
  if (missing(src)) {
    src <- str_c(deparse(substitute(expr)), collapse="")
  }
  if (debug) message(src)

  # No expression, just source code
  if (is.null(expr)) {
    return(list(new_source(src)))
  }
  expr <- as.expression(expr)

  if (is.null(enclos)) {
    enclos <- if (is.list(envir) || is.pairlist(envir)) parent.frame() else baseenv()
  }

  # Record output correctly interleaved with messages, warnings and errors.
  w <- watchout(debug)
  on.exit(w$close())
  output <- list(new_source(src))
  had_error <- FALSE

  wHandler <- function(wn) {
    output <<- c(output, w$get_new(), list(wn))
    invokeRestart("muffleWarning")
  }
  eHandler <- function(e) {
    # Capture call stack, removing last two calls, which are added by
    # withCallingHandlers
    # e$calls <- head(sys.calls(), -2)
    output <<- c(output, w$get_new(), list(e))
  }
  mHandler <- function(m) {
    output <<- c(output, w$get_new(), list(m))
    invokeRestart("muffleMessage")
  }

  # set hooks to record all new plots
  hooks <- c("before.plot.new", "before.grid.newpage")
  hook_new_plot <- function() {
    output <<- c(output, w$get_new())
  }
  for (h in hooks) setHook(h, hook_new_plot)

  ev <- list(value = NULL, visible = FALSE)
  try(ev <- withCallingHandlers(
    withVisible(eval(expr, envir, enclos)),
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

  # restore plot hooks: no straightforward way to do this
  diff_hooks <- function(x) !identical(x, hook_new_plot)
  for (h in hooks) {
    other_hooks <- Filter(diff_hooks, getHook(h))
    setHook(h, NULL, "replace")
    lapply(other_hooks, setHook, hookName = h)
  }

  output
}

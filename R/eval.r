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
evaluate <- function(input, envir = parent.frame(), enclos = NULL) {  
  parsed <- parse_all(input)
  
  unlist(mapply(eval.with.details, parsed$expr, parsed$src, 
    MoreArgs = list(envir = envir, enclos = enclos), SIMPLIFY = FALSE), 
    recursive = FALSE)
}

eval.with.details <- function(expr, envir = parent.frame(), enclos = NULL, src = NULL) {
  if (missing(src)) {
    src <- paste(deparse(substitute(expr)), collapse="")
  }

  # No expression, just source code
  if (is.null(expr)) {
    return(list(new_source(src)))
  }
  expr <- as.expression(expr)
  
  if (is.null(enclos)) {
    enclos <- if (is.list(envir) || is.pairlist(envir)) parent.frame() else baseenv()
  }
  
  # Record output correctly interleaved with messages, warnings and errors.
  w <- watchout()
  on.exit(w$close())
  output <- list()
  
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

  ev <- list(value = NULL, visible = FALSE)  
  try(ev <- withCallingHandlers(
    .Internal(eval.with.vis(expr, envir, enclos)),
    warning = wHandler, error = eHandler, message = mHandler), silent = TRUE
  )
  output <- c(output, w$get_new())
  
  c(list(new_source(src)), output, list(new_value(ev$value, ev$visible)))
}

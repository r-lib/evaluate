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
#' @return Invisibly returns previous values.
#' @examples library(evaluate)
#' # normally you cannot capture the output of system
#' evaluate("system('R --version')")
#'
#' # replace the system() function
#' old <- inject_funs(system = function(...) {
#'   cat(base::system(..., intern = TRUE), sep = "\n")
#' })
#'
#' evaluate("system('R --version')")
#'
#' # restore previously injected functions
#' inject_funs(old)
#' @export
inject_funs <- function(...) {
  funs <- list(...)
  funs <- funs[names(funs) != ""]
  old <- the$inject_funs
  the$inject_funs <- Filter(is.function, funs)

  invisible(old)
}

local_inject_funs <- function(envir, frame = parent.frame()) {
  funs <- the$inject_funs
  if (length(funs) == 0) {
    return()
  }

  funs_names <- names(funs)
  funs_new <- !vapply(funs_names, exists, logical(1), envir, inherits = FALSE)
  funs_names <- funs_names[funs_new]
  funs <- funs[funs_new]

  defer(rm(list = funs_names, envir = envir), frame = frame)

  for (i in seq_along(funs_names)) {
    assign(funs_names[i], funs[[i]], envir)
  }

  invisible()
}

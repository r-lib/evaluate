#' Replay a list of evaluated results.
#'
#' Replay a list of evaluated results, as if you'd run them in an R
#' terminal.
#'
#' @param x result from \code{\link{evaluate}}
#' @export
#' @examples
#' samples <- system.file("tests", "testthat", package = "evaluate")
#' if (file_test("-d", samples)) {
#' replay(evaluate(file(file.path(samples, "order.r"))))
#' replay(evaluate(file(file.path(samples, "plot.r"))))
#' replay(evaluate(file(file.path(samples, "data.r"))))
#' }
replay <- function(x) UseMethod("replay", x)

#' @export
replay.list <- function(x) {
  invisible(lapply(x, replay))
}

#' @export
replay.character <- function(x) {
  cat(x)
}

#' @export
replay.source <- function(x) {
  cat(line_prompt(x$src))
}

#' @export
replay.warning <- function(x) {
  message("Warning message:\n", x$message)
}

#' @export
replay.message <- function(x) {
  message(str_replace(x$message, "\n$", ""))
}

#' @export
replay.error <- function(x) {
  if (is.null(x$call)) {
    message("Error: ", x$message)
  } else {
    call <- deparse(x$call)
    message("Error in ", call, ": ", x$message)
  }
}

#' @export
replay.value <- function(x) {
  if (x$visible) print(x$value)
}

#' @export
replay.recordedplot <- function(x) {
  print(x)
}

#' Line prompt.
#'
#' Format a single expression as if it had been entered at the command prompt.
#'
#' @param x string representing a single expression
#' @param prompt prompt for first line
#' @param continue prompt for subsequent lines
#' @keywords internal
#' @return a string
line_prompt <- function(x, prompt = getOption("prompt"), continue = getOption("continue")) {
  lines <- strsplit(x, "\n")[[1]]
  n <- length(lines)

  lines[1] <- str_c(prompt, lines[1])
  if (n > 1)
    lines[2:n] <- str_c(continue, lines[2:n])

  str_c(lines, "\n", collapse = "")
}

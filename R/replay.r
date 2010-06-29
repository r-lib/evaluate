#' Replay a list of evaluated results.
#' Replay a list of evaluated results, just like you'd run them in a R
#' terminal.
#'
#' @param x result from \code{\link{evaluate}}
#' @examples
#' samples <- system.file("tests", package = "eval.with.details")
#' replay(evaluate(file(file.path(samples, "test-1.r"))))
#' replay(evaluate(file(file.path(samples, "test-2.r"))))
#' replay(evaluate(file(file.path(samples, "eval-output.r"))))
replay <- function(x) UseMethod("replay", x)

replay.list <- function(x) invisible(lapply(x, replay))

replay.character <- function(x) {
  cat(x)
}
replay.source <- function(x) cat(line_prompt(x$src))
replay.warning <- function(x) {
  message("Warning message:\n", x$message)
}
replay.message <- function(x) {
  message(gsub("\n$", "", x$message))
}
replay.error <- function(x) {
  if (is.null(x$call)) {
    message("Error: ", x$message)    
  } else {
    call <- deparse(x$call)
    message("Error in ", call, ": ", x$message)    
  }
}
replay.default <- function(x) {}


line_prompt <- function(x, prompt = options("prompt"), continue = options("continue"), ...) {
  lines <- strsplit(x, "\n")[[1]]
  n <- length(lines)

  lines[1] <- paste(prompt, lines[1], sep="")
  if (n > 1)
    lines[2:n] <- paste(continue, lines[2:n], sep="")    
  
  paste(lines, "\n", collapse="")
}


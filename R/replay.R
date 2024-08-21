#' Replay a list of evaluated results
#'
#' Replay a list of evaluated results, as if you'd run them in an R
#' terminal.
#'
#' @param x result from [evaluate()]
#' @export
#' @examples
#' f1 <- function() {
#'   cat("1\n")
#'   print("2")
#'   warning("3")
#'   print("4")
#'   message("5")
#'   stop("6")
#' }
#' replay(evaluate("f1()"))
#'
#' f2 <- function() {
#'   message("Hello")
#'   plot(1:10)
#'   message("Goodbye")
#' }
#' replay(evaluate("f2()"))
replay <- function(x) {
  UseMethod("replay", x)
}

#' @export
replay.list <- function(x) {
  invisible(lapply(x, replay))
}

#' @export
replay.default <- function(x) {
  render(x, TRUE, parent.frame())
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
replay.condition <- function(x) {
  cat_line(format_condition(x))
}

#' @export
replay.recordedplot <- function(x) {
  print(x)
}

format_condition <- function(x) {
  if (inherits(x, "message")) {
    return(gsub("\n$", "", conditionMessage(x)))
  }

  if (inherits(x, "error")) {
    type <- "Error"
  } else if (inherits(x, "warning")) {
    type <- "Warning"
  }

  call <- conditionCall(x)
  if (is.null(call)) {
    header <- paste0(type, ":")
  } else {
    header <- paste0(type, " in ", deparse1(call), ":")
  }

  body <- conditionMessage(x)
  paste0(header, "\n", body)
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

  lines[1] <- paste0(prompt, lines[1])
  if (n > 1) {
    lines[2:n] <- paste0(continue, lines[2:n])
  }

  paste0(lines, "\n", collapse = "")
}

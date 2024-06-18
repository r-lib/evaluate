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
replay <- function(x) UseMethod("replay", x)

#' @export
replay.list <- function(x) {
  invisible(lapply(x, replay))
}

#' @export
replay.default <- function(x) {
  render(x)
}

#' @export
replay.character <- function(x) {
  cat(x)
}

#' @export
replay.source <- function(x) {
  s <- if (is.null(attr(x$src,'timing'))) '' else render_timing(attr(x$src, 'timing'))
  cat(paste0(s, line_prompt(x$src)))
}

#' @export
replay.warning <- function(x) {
  message(format_condition(x))
}

#' @export
replay.message <- function(x) {
  message(sub("\n$", "", x$message))
}

#' @export
replay.error <- function(x) {
  message(format_condition(x))
}

#' @export
replay.value <- function(x) {
  if (x$visible) print(x$value)
}

#' @export
replay.recordedplot <- function(x) {
  print(x)
}

render_timing <- function(t) {
  if (max(t) < 0.5) '' else paste0(
    '[', render_sec(t[[1]] + t[[2]]), # User time + Kernel time
    ',', render_sec(t[[3]]), # Wall time
    ']'
  )
}

render_sec <- function(s) {
  if (s < 0.005) return('<5ms')
  if (s < 1) return(paste0(round(s,2), 's'))
  if (s < 10) return(paste0(round(s,1), 's'))
  sec <- round(s,0)
  if (sec < 120) return(paste0(sec, 's'))
  min <- floor(sec/60)
  sec <- sec - min*60
  if (min < 10) return(paste0(
    min, 'm', formatC(sec, digits = 0, width = 2, format = "f", flag = "0"), 's'
  ))
  min <- min + round(sec/60, 0)
  if (min < 120) return(paste0(min, 'm'))
  h <- floor(min/60)
  min <- min - h * 60
  if (h < 48) return(paste0(
    h, 'h', formatC(min, digits = 0, width = 2, format = "f", flag = "0"), 'm'
  ))
  d <- floor(h/24)
  h <- h - d*24
  return(paste0(d, 'd', h, 'h'))
}


format_condition <- function(x) {
  if (inherits(x, "rlang_warning") || inherits(x, "rlang_error")) {
    format(x)
  } else {
    msg <- if (inherits(x, "warning")) "Warning" else "Error"

    call <- conditionCall(x)
    if (!is.null(conditionCall(x))) {
      msg <- paste0(msg, " in ", deparse1(call))
    }
    msg <- paste0(msg, ":\n", conditionMessage(x))
    msg
  }
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
  if (n > 1)
    lines[2:n] <- paste0(continue, lines[2:n])

  paste0(lines, "\n", collapse = "")
}

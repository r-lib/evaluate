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
replay.default <- function(x) {
  render(x)
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

render_timing<-function(t)
{
  if (max(t)<0.5)
    return('')
  return(paste0('[',render_sec(t[[1]]+t[[2]]),',',render_sec(t[[3]]),']'))
}

render_sec<-function(s)
{
  if (s<0.005)
    return('')
  if (s<1)
  {
    return(paste0(round(s,2),'s'))
  }
  if (s<10)
    return(paste0(round(s,1),'s'))
  sec<-round(s,0)
  if (sec<120)
    return(paste0(sec,'s'))
  min<-floor(sec/60)
  sec<-sec - min*60
  if (min<10)
    return(paste0(min,'m',formatC(sec, digits = 0, width = 2, format = "f", flag = "0"),'s'))
  min<-min+round(sec/60,0)
  if (min<120)
    return(paste0(min,'m'))
  h<-floor(min/60)
  min<-min - h*60
  if (h<48)
    return(paste0(h,'h',formatC(min, digits = 0, width = 2, format = "f", flag = "0"),'m'))
  d<-floor(h/24)
  h<-h - d*24
  return(paste0(d,'d',h,'h'))
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

  if (!is.null(attr(x,'timing')))
  {
    s<-attr(x,'timing')
    s<-render_timing(s)
    lines[1] <- str_c(s, prompt, lines[1])
  } else {
    lines[1] <- str_c(prompt, lines[1])
  }
  if (n > 1)
    lines[2:n] <- str_c(continue, lines[2:n])

  str_c(lines, "\n", collapse = "")
}

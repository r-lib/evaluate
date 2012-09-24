#' Extract a rectangular region of a srcfile
#'
#' @param srcfile string
#' @param x1 start line
#' @param x2 end line
#' @param y1 start col
#' @param y2 end col
#' @return a string
getSrcRegion <- function(srcfile, x1, x2, y1, y2) {
  if (is.infinite(x2)) x2 <- 1e6
  if (is.infinite(y2)) y2 <- 1e6

  lines <- getSrcLines(srcfile, x1, x2)

  text <- if (length(lines) == 1) {
    str_sub(lines[1], y1, y2 - 1)
  } else {
    c(
      str_sub(lines[1], y1, 1e6),
      lines[-c(1, length(lines))],
      str_sub(lines[length(lines)], 0, y2 - 1)
    )
  }
  str_c(text, collapse="\n")
}

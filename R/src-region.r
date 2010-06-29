#' Extract a rectangular region of a srcfile
#'
#' @return a string
getSrcRegion <- function(srcfile, x1, x2, y1, y2) {
  if (is.infinite(x2)) x2 <- 1e6
  if (is.infinite(y2)) y2 <- 1e6
  
  lines <- getSrcLines(srcfile, x1, x2)
  
  text <- if (length(lines) == 1) {
    substr(lines[1], y1, y2 - 1)
  } else {
    c(
      substr(lines[1], y1, 1e6),
      lines[-c(1, length(lines))],
      substr(lines[length(lines)], 0, y2 - 1)
    )
  }
  paste(text, collapse="\n")
}

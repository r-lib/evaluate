# Extract the given region out of the srcfile
getSrcRegion <- function(srcfile, x1, x2, y1, y2) {
  lines <- getSrcLines(srcfile, x1, x2)

  text <- if (length(lines) == 1) {
    substr(lines[1], y1, y2)
  } else {
    c(
      substr(lines[1], y1, 1e6),
      lines[-c(1, length(lines))],
      substr(lines[length(lines)], 0, y2)
    )
  }
  paste(text, collapse="\n")
}






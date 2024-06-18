cat_line <- function(...) {
  cat(paste0(..., "\n", collapse = ""))
}

indent <- function(x, by = "  ", drop_trailing_nl = TRUE) {
  if (drop_trailing_nl) {
    x <- gsub("\n$", "", x)
  }
  paste0(by, gsub("\n", paste0("\n", by), x))
}

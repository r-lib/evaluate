cat_line <- function(..., file = stdout()) {
  cat(paste0(..., "\n", collapse = ""), file = file)
}

indent <- function(x, by = "  ", drop_trailing_nl = TRUE) {
  if (drop_trailing_nl) {
    x <- gsub("\n$", "", x)
  }
  paste0(by, gsub("\n", paste0("\n", by), x))
}

defer <- function(expr, frame = parent.frame(), after = FALSE) {
  thunk <- as.call(list(function() expr))
  do.call(on.exit, list(thunk, TRUE, after), envir = frame)
}

`%||%` <- function(a, b) if (is.null(a)) b else a

compact <- function(x) {
  x[!vapply(x, is.null, logical(1))]
}

env_var_is_true <- function(x) {
  isTRUE(as.logical(Sys.getenv(x, "false")))
}

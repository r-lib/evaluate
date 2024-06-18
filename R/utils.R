defer <- function(expr, frame = parent.frame(), after = FALSE) {
  thunk <- as.call(list(function() expr))
  do.call(on.exit, list(thunk, TRUE, after), envir = frame)
}

compact <- function(x) {
  x[!vapply(x, is.null, logical(1))]
}

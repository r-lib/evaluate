capture.all <- function(expr) {
  eval.with.details(expr)$output
}

quiet <- function(expr) {
  eval.with.details(expr)$value
}
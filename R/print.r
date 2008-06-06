"print.expr-eval" <- function(x, ...) {
  cat(rep("-", options("width")), sep = "")
  weave.out(x, interactive)
  cat(rep("-", options("width")), "\n", sep = "")
}


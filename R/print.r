"print.expr-eval" <- function(x, ...) {
  interactive$start()
  weave.out(x, interactive)
  interactive$stop()
}


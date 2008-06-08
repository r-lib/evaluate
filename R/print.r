"print.ewd" <- function(x, ...) {
  interactive$start()
  weave.out(x, interactive)
  interactive$stop()
}

"print.ewd-list" <- function(x, ...) {
  interactive$start()
  lapply(x, function(x) weave.out(x, interactive))
  interactive$stop()
}


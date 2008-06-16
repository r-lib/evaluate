"print.ewd" <- function(x, ...) {
  interactive$start()
  weave_out(x, interactive)
  interactive$stop()
}

"print.ewd-list" <- function(x, ...) {
  interactive$start()
  lapply(x, function(x) weave_out(x, interactive))
  interactive$stop()
}


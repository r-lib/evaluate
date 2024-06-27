#' An emulation of `flush.console()` in `evaluate()`
#'
#' @description
#' When [evaluate()] is evaluating code, the text output is diverted into
#' an internal connection, and there is no way to flush that connection. This
#' function provides a way to "flush" the connection so that any text output can
#' be immediately written out, and more importantly, the `text` handler
#' (specified in the `output_handler` argument of `evaluate()`) will
#' be called, which makes it possible for users to know it when the code
#' produces text output using the handler.
#' 
#' This function is supposed to be called inside `evaluate()` (e.g.
#' either a direct `evaluate()` call or in \pkg{knitr} code chunks).
#' @export
flush_console = function() {
  if (!is.null(the$console_flusher)) {
    the$console_flusher()
  }
  invisible()
}

the$console_flusher <- NULL

local_console_flusher <- function(flusher, frame = parent.frame()) {
  old <- set_console_flusher(flusher)
  defer(set_console_flusher(old), frame)
  invisible()
}

set_console_flusher <- function(flusher) {
  old <- the$console_flusher
  the$console_flusher <- flusher
  invisible(old)
} 

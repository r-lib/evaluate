#' Watch for changes in output, text and graphics
#'
#' @param debug activate debug mode where output will be both printed to
#'   screen and captured.
#' @param handler An ouptut handler object.
#' @param frame When this frame terminates, the watcher will automatically close.` 
#' @return list containing four functions: `get_new`, `pause`,
#'  `unpause`, `close`.
#' @keywords internal
watchout <- function(handler = new_output_handler(),
                     debug = FALSE,
                     frame = parent.frame()) {
  con <- file("", "w+b")
  defer(frame = frame, {
    if (!test_con(con, isOpen)) {
      con_error('The connection has been closed')
    }
    sink()
    close(con)
  })
  sink(con, split = debug)

  # try() defaults to using stderr() so we need to explicitly override(#88)
  old <- options(try.outFile = con)
  defer(options(old), frame = frame)

  function(plot = TRUE, incomplete_plots = FALSE) {
    out <- list(
      if (plot) plot_snapshot(incomplete_plots),
      read_con(con)
    )
    if (!is.null(out[[1]])) {
      handler$graphics(out[[1]])
    }
    if (!is.null(out[[2]])) {
      handler$text(out[[2]])
    }
    
    compact(out)
  }
}

read_con <- function(con, buffer = 1024) {
  bytes <- raw()
  repeat {
    new <- readBin(con, "raw", n = buffer)
    if (length(new) == 0) break
    bytes <- c(bytes, new)
  }
  if (length(bytes) == 0) {
    NULL
  } else {
    rawToChar(bytes)
  }
}

test_con = function(con, test) {
  tryCatch(test(con), error = function(e) con_error(e$message))
}

con_error = function(x) stop(
  x, '... Please make sure not to call closeAllConnections().', call. = FALSE
)

.env = new.env()
.env$flush_console = function() {}

#' An emulation of flush.console() in evaluate()
#'
#' When [evaluate()] is evaluating code, the text output is diverted into
#' an internal connection, and there is no way to flush that connection. This
#' function provides a way to "flush" the connection so that any text output can
#' be immediately written out, and more importantly, the `text` handler
#' (specified in the `output_handler` argument of `evaluate()`) will
#' be called, which makes it possible for users to know it when the code
#' produces text output using the handler.
#' @note This function is supposed to be called inside `evaluate()` (e.g.
#'   either a direct `evaluate()` call or in \pkg{knitr} code chunks).
#' @export
flush_console = function() .env$flush_console()

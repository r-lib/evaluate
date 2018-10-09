#' Watch for changes in output, text and graphical.
#'
#' @param debug activate debug mode where output will be both printed to
#'   screen and captured.
#' @return list containing four functions: \code{get_new}, \code{pause},
#'  \code{unpause}, \code{close}.
#' @keywords internal
watchout <- function(debug = FALSE) {
  output <- character()
  prev   <- character()

  con <- textConnection("output", "wr", local = TRUE)
  sink(con, split = debug)

  list(
    get_new = function(plot = FALSE, incomplete_plots = FALSE,
                       text_callback = identity, graphics_callback = identity) {
      incomplete <- isIncomplete(con)
      if (incomplete) cat("\n")

      out <- list()

      if (plot) {
        out$graphics <- plot_snapshot(incomplete_plots)
        if (!is.null(out$graphics)) graphics_callback(out$graphics)
      }

      n0 <- length(prev)
      n1 <- length(output)
      if (n1 > n0) {
        new <- output[n0 + seq_len(n1 - n0)]
        prev <<- output

        out$text <- paste0(new, collapse = "\n")
        if (!incomplete) out$text <- paste0(out$text, "\n")

        text_callback(out$text)
      }

      unname(out)
    },
    pause = function() sink(),
    unpause = function() sink(con, split = debug),
    close = function() {
      if (!isOpen(con))
        stop("something bad happened... did you use closeAllConnections()?")
      sink()
      close(con)
      output
    }
  )
}

.env = new.env()
.env$flush_console = function() {}

#' An emulation of flush.console() in evaluate()
#'
#' When \code{evaluate()} is evaluating code, the text output is diverted into
#' an internal connection, and there is no way to flush that connection. This
#' function provides a way to "flush" the connection so that any text output can
#' be immediately written out, and more importantly, the \code{text} handler
#' (specified in the \code{output_handler} argument of \code{evaluate()}) will
#' be called, which makes it possible for users to know it when the code
#' produces text output using the handler.
#' @note This function is supposed to be called inside \code{evaluate()} (e.g.
#'   either a direct \code{evaluate()} call or in \pkg{knitr} code chunks).
#' @export
flush_console = function() .env$flush_console()

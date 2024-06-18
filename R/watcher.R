#' Watch for changes in output, text and graphics
#'
#' @param debug activate debug mode where output will be both printed to
#'   screen and captured.
#' @return list containing four functions: `get_new`, `pause`,
#'  `unpause`, `close`.
#' @keywords internal
watchout <- function(debug = FALSE) {
  output <- character()
  prev   <- character()

  con <- textConnection("output", "wr", local = TRUE)
  sink(con, split = debug)

  list(
    get_new = function(plot = FALSE, incomplete_plots = FALSE,
                       text_callback = identity, graphics_callback = identity) {
      incomplete <- test_con(con, isIncomplete)
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
      if (!test_con(con, isOpen)) con_error('The connection has been closed')
      sink()
      close(con)
      output
    },
    get_con = function() con
  )
}

test_con = function(con, test) {
  tryCatch(test(con), error = function(e) con_error(e$message))
}

con_error = function(x) stop(
  x, '... Please make sure not to call closeAllConnections().', call. = FALSE
)

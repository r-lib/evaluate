#' Watch for changes in output, text and graphical.
#'
#' @param debug activate debug mode where output will be both printed to
#'   screen and captured.
#' @return list containing four functions: \code{get_new}, \code{pause},
#'  \code{unpause}, \code{close}.
watchout <- function(debug = FALSE) {
  output <- vector("character")
  prev   <- vector("character")

  con <- textConnection("output", "wr", local=TRUE)
  sink(con, split = debug)

  list(
    get_new = function(plot = FALSE, incomplete_plots = FALSE) {
      incomplete <- isIncomplete(con)
      if (incomplete) cat("\n")

      out <- list()

      if (plot) {
        out$graphics <- plot_snapshot(incomplete_plots)
      }

      if (length(output) != length(prev)) {
        new <- output[setdiff(seq_along(output), seq_along(prev))]
        prev <<- output

        out$text <- str_c(new, collapse = "\n")
        if (!incomplete) out$text <- str_c(out$text, "\n")
      }

      unname(out)
    },
    pause = function() sink(),
    unpause = function() sink(con, split = debug),
    close = function() {
      sink()
      close(con)
      output
    }
  )
}

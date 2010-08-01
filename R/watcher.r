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
    get_new = function() {
      out <- list()
      if (length(output) != length(prev)) {
        new <- output[setdiff(seq_along(output), seq_along(prev))]
        prev <<- output
        
        out$text <- paste(paste(new, collapse="\n"), "\n", sep = "")
      }

      out$graphics <- plot_snapshot()

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
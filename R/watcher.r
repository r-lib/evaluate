#' Watch for changes in output, text and graphical.
#'
#' @param debug activate debug mode where output will be both printed to
#'   screen and captured.
#' @return list containing four functions: \code{get_new}, \code{pause}, 
#'  \code{unpause}, \code{close}.
watchout <- function(debug = FALSE) {
  output <- vector("character")
  prev   <- vector("character")

  # Use undocumented null graphics device to avoid plot windows opening
  # Thanks to Paul Murrell
  .Call("R_GD_nullDevice")
  dev.control("enable")
  plot_snapshot()

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

      graphics <- plot_snapshot()
      if (!is.null(graphics)) {
        out$graphics <- graphics
      }
      unname(out)
    },
    pause = function() sink(),
    unpause = function() sink(con, split = debug),
    close = function() {
      sink()
      close(con)
      dev.off()
      output
    }
  )
}
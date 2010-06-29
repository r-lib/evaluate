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
      if (length(output) == length(prev)) return()

      new <- output[setdiff(seq_along(output), seq_along(prev))]
      prev <<- output
      
      graphics <- plot_snapshot()
      text <- paste(paste(new, collapse="\n"), "\n", sep="")
      
      if (!is.null(graphics)) {
        c(list(graphics), text)
      } else {
        as.list(text)
      }
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
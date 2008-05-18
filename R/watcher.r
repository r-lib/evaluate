
watchout <- function(split = FALSE) {
  output <- vector("character")
  prev   <- vector("character")

  con <- textConnection("output", "wr", local=TRUE)
  sink(con, split=split)
  
  list(
    get_new = function() {
      if (length(output) == length(prev)) return()

      new <- output[setdiff(seq_along(output), seq_along(prev))]
      prev <<- output
      
      paste(paste(new, collapse="\n"), "\n", sep="")
    },
    pause = function() sink(),
    unpause = function() sink(con, split=split),
    close = function() {
      sink()
      close(con)
      output
    }
  )
}
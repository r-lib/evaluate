growable <- function() {
  out <- list()
  i <- 1
  has_error <- FALSE

  list(
    errored = function() {
      has_error <<- TRUE
    },
    push = function(value) {
      if (!is.null(value)) {
        out[[i]] <<- value
        i <<- i + 1
      }
      invisible
    },
    get = function() {
      out
    },
    has_errored = function() {
      has_error
    }
  )
}

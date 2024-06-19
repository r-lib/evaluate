growable <- function(handler) {
  force(handler)
  
  out <- list()
  i <- 1
  has_error <- FALSE

  list(
    errored = function() {
      has_error <<- TRUE
    },
    push = function(value) {
      if (is.null(value)) {
        return(invisible())
      }
      
      out[[i]] <<- value
      i <<- i + 1
      switch(output_type(value),
        error = handler$error(value),
        warning = handler$warning(value),
        message = handler$message(value),
        plot = handler$graphics(value),
        text = handler$text(value)
      )      
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

output_type <- function(x) {
  if (is.character(x)) {
    "text"
  } else if (inherits(x, "error")) {
    "error"
  } else if (inherits(x, "warning")) {
    "warning"
  } else if (inherits(x, "message")) {
    "message"
  } else if (inherits(x, "recordedplot")) {
    "plot"
  } else if (inherits(x, "source")) {
    "source"
  } else {
    class(x)[[1]]
  }
}

weave <- function(input, envir = parent.frame(), enclos = NULL) {  
  parsed <- parse_all(input)
  
  evaluate <- function(expr, src) {
    eval.with.details(expr, envir = envir, enclos = enclos, src = src)
  }
  
  structure(
    lapply(1:nrow(parsed), function(i) {
      with(parsed[i,], evaluate(expr[[1]], src[[1]]))
    }),
    class = "ewd-list"
  )
}

weave_out <- function(x, f, ...) {
  f$src(x$src, !is.null(x$visible))

  if (is.null(x$visible)) return()

  lapply(x$output, function(x) {
    if (inherits(x, "message")) {
      f$message(x$message, ...)
    } else if (inherits(x, "warning")) {
      f$warning(x$message, x$call, ...)
    } else if (inherits(x, "error")) {
      f$error(x$message, x$call, ...)
    } else {
      f$out(x, ...)
    }
  })
  
  if(x$visible) {
    f$value(x$value, ...)
  }
}
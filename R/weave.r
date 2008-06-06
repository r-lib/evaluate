weave <- function(input, file = NULL, format = NULL) {
  
  if (is.null(file)) {
    format <- interactive
    path <- NA
  } else {
    path <- dirname(file)
  }
 
  if (is.function(input) && length(formals(input)) == 0) {
    expr <- do.call("expression",as.list(substitute(input)[[3]][-1]))
  } else {
    expr <- substitute(input)
  }
 
  details <- do.call("eval.with.details", list(expr))
  browser()
  lapply(details, function(x) weave.out(x, format))
}

weave.out <- function(x, f) {
  f$src(x$src)

  if (is.null(x$visible)) return()

  lapply(x$output, function(x) {
    if (inherits(x, "message")) {
      f$message(x$message)
    } else if (inherits(x, "warning")) {
      f$warning(x$message, x$call)
    } else if (inherits(x, "error")) {
      f$error(x$message, x$call)
    } else {
      f$out(x)
    }
  })
  
  if(x$visible) {
    f$value(x$value)
  }
}

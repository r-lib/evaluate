"print.expr-eval" <- function(x, ...) {
  cat(rep("-", options("width")), sep = "")
  if (is.null(x$visible)) {
    cat(gsub("\n", "\n> ", x$src))
  } else { 
    cat(gsub("^\n", "\n\\> ", gsub("(.)\n", "\\1\n+ ", x$src)), "\n")

    lapply(x$output, function(x) {
      if (inherits(x, "message")) {
        message(gsub("\n^", "", x$message))
      } else if (inherits(x, "warning")) {
        message("Warning in ", deparse(x$call), " : ", x$message)
      } else if (inherits(x, "error")) {
        message("Error in ", deparse(x$call), " : ", x$message)
      } else {
        cat(x)
      }
    })
    
    if(x$visible) {
      print(x$value)
    }
  }
  cat(rep("-", options("width")), "\n", sep = "")
}


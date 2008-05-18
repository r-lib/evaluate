eval.with.details <- function (expr, envir = parent.frame(), enclos = NULL) {
  src <- paste("\n", deparse(substitute(expr)), sep="")
  if (is.null(enclos)) {
    enclos <- if (is.list(envir) || is.pairlist(envir)) parent.frame() else baseenv()
  }
  
  prev <- vector()
  newout <- function(.) {
    all <- readLines(path)
    if (length(all) == length(prev)) return()
    new <- all[seq(length(prev) + 1, length(all))]
    prev <<- all
    new
  }

  
  output <- list()
  wHandler <- function(w) {
    output <<- c(output, newout(), list(w))
    invokeRestart("muffleWarning")
  }
  eHandler <- function(e) {
    output <<- c(output, newout(), list(e))
  }
  mHandler <- function(m) {
    output <<- c(output, newout(), list(m))
    invokeRestart("muffleMessage")
  }
  ev <- data.frame(value=NA, visible=FALSE)
  
  path <- tempfile()
  sink(path)
  on.exit({ sink(); unlink(path)})

  try(ev <- withCallingHandlers(
    .Internal(eval.with.vis(expr, envir, enclos)),
    warning = wHandler, error = eHandler, message = mHandler), silent=TRUE
  )
  output <- c(output, newout())  
  
  structure(
    list(value = ev$value, visible = ev$visible, output=output, src=src),
    class = "expr-eval"
  )
}

"print.expr-eval" <- function(x, ...) {
  if (is.null(x$visible)) {
    cat(gsub("\n", escape_code("\n> "), highlight(x$src)))
  } else { 
    cat(gsub("^\n", escape_code("\n\\> "), gsub("(.)\n", "\\1\n+ ", highlight(x$src))), "\n")

    lapply(x$output, function(x) {
      if (inherits(x, "message")) {
        message(gsub("\n^", "", x$message))
      } else if (inherits(x, "warning")) {
        message("Warning in ", deparse(x$call), " : ", x$message)
      } else if (inherits(x, "error")) {
        message("Error in ", deparse(x$call), " : ", x$message)
      } else {
        cat(x, "\n")
      }
    })
    
    if(x$visible) {
      if (inherits(x$value, "ggplot") ) {
        cat("\n")
        img(print(x$value), hash=digest.ggplot(x$value))
      } else {
        print(x$value)
      }
    }
  }
}


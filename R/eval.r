# eval.with.details({print("Ha!"); 12})

eval.with.details <- function(exprs, envir = parent.frame(), enclos = NULL) {
  lapply(exprs, eval.with.details.single, envir=envir, enclos=NULL)
}

eval.with.details.single <- function(expr, envir = parent.frame(), enclos = NULL) {
  src <- paste("\n", deparse(expr), collapse="")
  
  if (is.null(enclos)) {
    enclos <- if (is.list(envir) || is.pairlist(envir)) parent.frame() else baseenv()
  }
  
  w <- watchout(split=TRUE)
  output <- list()
  
  wHandler <- function(w) {
    output <<- c(output, w$get_new(), list(w))
    invokeRestart("muffleWarning")
  }
  eHandler <- function(e) {
    output <<- c(output, w$get_new(), list(e))
  }
  mHandler <- function(m) {
    output <<- c(output, w$get_new(), list(m))
    invokeRestart("muffleMessage")
  }
  ev <- list(value=NULL, visible=FALSE)
  
  try(ev <- withCallingHandlers(
    .Internal(eval.with.vis(expr, envir, enclos)),
    warning = wHandler, error = eHandler, message = mHandler), silent=TRUE
  )
  output <- c(output, w$get_new())
  all <- w$close()  
  
  structure(
    list(value = ev$value, visible = ev$visible, output=output, src=src),
    class = "expr-eval"
  )
}

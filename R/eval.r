eval.with.details <- function(expr, envir = parent.frame(), enclos = NULL, src = NULL) {
  if (missing(src)) {
    src <- paste(deparse(substitute(expr)), collapse="")
  }
  
  if (is.null(expr)) {
    return(structure(
      list(value = NULL, visible = NULL, src = src),
      class = "ewd"
    ))
  }
  
  if (is.null(enclos)) {
    enclos <- if (is.list(envir) || is.pairlist(envir)) parent.frame() else baseenv()
  }
  
  w <- watchout(split=FALSE)
  on.exit(w$close())
  output <- list()
  
  wHandler <- function(wn) {
    output <<- c(output, w$get_new(), list(wn))
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
  
  expr <- as.expression(expr)
  
  try(ev <- withCallingHandlers(
    .Internal(eval.with.vis(expr, envir, enclos)),
    warning = wHandler, error = eHandler, message = mHandler), silent=TRUE
  )
  output <- c(output, w$get_new())
  
  structure(
    list(value = ev$value, visible = ev$visible, output=output, src=src),
    class = "ewd"
  )
}

"print.ewd" <- function(x, ...) {
  weave_out(list(x), weave_r)
}
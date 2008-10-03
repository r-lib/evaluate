# Should be able to control what gets records - only output, no messages etc.
# 

eval.with.details <- function(expr, envir = parent.frame(), enclos = NULL, src = paste(deparse(expr), collapse="")) {
  
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
  all <- w$close()
  
  structure(
    list(value = ev$value, visible = ev$visible, output=output, src=src),
    class = "ewd"
  )
}

"print.ewd" <- function(x, ...) {
  weave_out(x, interactive)
}
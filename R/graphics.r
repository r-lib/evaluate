#' Capture snapshot of current device.
#' There's currently no way to capture when a graphics device changes,
#' except to check its contents after the evaluation of every expression.
#' This means that only the last plot of a series will be captured.
#' 
#' @return \code{NULL} if plot is blank or unchanged, otherwise the output of
#'   \code{\link[grDevices]{recordPlot}}.
plot_snapshot <- local({ 
  last_plot <- NULL
  
  function() {
    if (is.null(dev.list())) return(NULL)
    
    plot <- recordPlot()
    if (identical(plot, last_plot)) return(NULL)
    
    last_plot <<- plot
    if (is.empty(plot)) return(NULL)
    plot
  }
})

is.empty <- function(x) {
  if(is.null(x)) return(TRUE)
  
  drawing <- setdiff(plot_calls(x), c("plot.new", "plot.window", "par"))
  length(drawing) == 0
}

plot_calls <- function(plot) {
  prims <- lapply(plot[[1]], "[[", 1)
  chars <- sapply(prims, deparse)
  
  str_replace(chars, ".Primitive\\(\"|\"\\)", "")
}
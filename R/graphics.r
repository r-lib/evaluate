#" Capture snapshot of current device.
#"
#" There's currently no way to capture when a graphics device changes,
#" except to check its contents after the evaluation of every expression.
#" This means that only the last plot of a series will be captured.
#"
#" @return \code{NULL} if plot is blank or unchanged, otherwise the output of
#"   \code{\link[grDevices]{recordPlot}}.
plot_snapshot <- local({
  last_plot <- NULL

  function(incomplete = FALSE) {
    if (is.null(dev.list())) return(NULL)

    pos <- par("mfg")[1:2]
    size <- par("mfg")[3:4]
    if (!incomplete && !identical(pos, size)) return(NULL)

    plot <- recordPlot()
    if (is_par_change(last_plot, plot) || identical(last_plot, plot)) {
      return(NULL)
    }

    if (is.empty(plot)) return(NULL)
    last_plot <<- plot
    plot
  }
})

is_par_change <- function(p1, p2) {
  calls1 <- plot_calls(p1)
  calls2 <- plot_calls(p2)

  n1 <- length(calls1)
  n2 <- length(calls2)

  if (n2 <= n1) return(FALSE)
  if (!identical(calls1, calls2[1:n1])) return(FALSE)

  last <- calls2[(n1 + 1):n2]
  all(last %in% c("layout", "par"))
}


par_added <- function(a, b) {
  n_a <- length(a[[1]])
  n_b <- length(b[[1]])

  # Has more than one additional element
  if (n_a != n_b - 1) return(FALSE)



  lapply(plot[[1]], "[[", 1)
}

is.empty <- function(x) {
  if(is.null(x)) return(TRUE)

  drawing <- setdiff(plot_calls(x), c("plot.new", "plot.window", "par"))
  length(drawing) == 0
}

plot_calls <- function(plot) {
  prims <- lapply(plot[[1]], "[[", 1)
  if (length(prims) == 0) return()

  chars <- sapply(prims, deparse)
  str_replace_all(chars, ".Primitive\\(\"|\"\\)", "")
}

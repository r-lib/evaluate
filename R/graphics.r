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
    if (!incomplete && !par('page')) return(NULL)  # current page not complete

    plot <- recordPlot()
    if (identical(last_plot, plot) || is_par_change(last_plot, plot)) {
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
  i1 <- seq_len(n1)
  if (!identical(calls1, calls2[i1])) return(FALSE)
  # also check if the content of the display list is still the same (note we
  # need p1[[1]][] as well because [] turns a dotted pair list into a list)
  if (!identical(p1[[1]][i1], p2[[1]][i1])) return(FALSE)

  last <- calls2[(n1 + 1):n2]
  all(last %in% empty_calls)
}

# if all calls are in these elements, the plot is basically empty
empty_calls <- c("layout", "par", "clip")
empty_calls <- c(
  "palette", "palette2",
  sprintf("C_%s", c(empty_calls, "strWidth", "strHeight", "plot_window"))
)

is.empty <- function(x) {
  if (is.null(x)) return(TRUE)

  pc <- plot_calls(x)
  if (length(pc) == 0) return(TRUE)

  all(pc %in% empty_calls)
}

plot_calls <- function(plot) {
  el <- lapply(plot[[1]], "[[", 2)
  if (length(el) == 0) return()
  sapply(el, function(x) {
    x <- x[[1]]
    # grid graphics do not have x$name
    if (is.null(x[["name"]])) deparse(x) else x[["name"]]
  })
}

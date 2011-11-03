\name{plot_snapshot}
\alias{plot_snapshot}
\title{Capture snapshot of current device.}
\usage{
  plot_snapshot()
}
\value{
  \code{NULL} if plot is blank or unchanged, otherwise the
  output of \code{\link[grDevices]{recordPlot}}.
}
\description{
  There's currently no way to capture when a graphics
  device changes, except to check its contents after the
  evaluation of every expression. This means that only the
  last plot of a series will be captured.
}


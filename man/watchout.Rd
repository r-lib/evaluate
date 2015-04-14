% Please edit documentation in R/watcher.r
\name{watchout}
\alias{watchout}
\title{Watch for changes in output, text and graphical.}
\usage{
watchout(debug = FALSE)
}
\arguments{
\item{debug}{activate debug mode where output will be both printed to
screen and captured.}
}
\value{
list containing four functions: \code{get_new}, \code{pause},
 \code{unpause}, \code{close}.
}
\description{
Watch for changes in output, text and graphical.
}
\keyword{internal}

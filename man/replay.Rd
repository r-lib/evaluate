% Please edit documentation in R/replay.r
\name{replay}
\alias{replay}
\title{Replay a list of evaluated results.}
\usage{
replay(x)
}
\arguments{
\item{x}{result from \code{\link{evaluate}}}
}
\description{
Replay a list of evaluated results, as if you'd run them in an R
terminal.
}
\examples{
samples <- system.file("tests", "testthat", package = "evaluate")
if (file_test("-d", samples)) {
    replay(evaluate(file(file.path(samples, "order.r"))))
    replay(evaluate(file(file.path(samples, "plot.r"))))
    replay(evaluate(file(file.path(samples, "data.r"))))
}
}

\name{replay}
\alias{replay}
\title{Replay a list of evaluated results.}
\usage{replay(x)}

\description{
  Replay a list of evaluated results. Replay a list of evaluated
  results, as if you'd run them in an R terminal.
}
\arguments{
  \item{x}{result from \code{\link{evaluate}}}
}
\examples{samples <- system.file("tests", package = "evaluate")
replay(evaluate(file(file.path(samples, "test-1.r"))))
replay(evaluate(file(file.path(samples, "test-2.r"))))
replay(evaluate(file(file.path(samples, "eval-output.r"))))}

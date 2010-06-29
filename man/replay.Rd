\name{replay}
\title{Replay a list of evaluated results.}
\usage{replay(x)}

\description{
  Replay a list of evaluated results. Replay a list of evaluated
  results, as if you'd run them in an R terminal.
}
\alias{replay}
\alias{replay.list}
\alias{replay.character}
\alias{replay.source}
\alias{replay.warning}
\alias{replay.message}
\alias{replay.error}
\alias{replay.value}
\alias{replay.recordedplot}
\arguments{
  \item{x}{result from \code{\link{evaluate}}}
}
\examples{samples <- system.file("tests", package = "eval.with.details")
replay(evaluate(file(file.path(samples, "test-1.r"))))
replay(evaluate(file(file.path(samples, "test-2.r"))))
replay(evaluate(file(file.path(samples, "eval-output.r"))))}

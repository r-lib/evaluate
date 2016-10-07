% Please edit documentation in R/eval.r
\name{inject_funs}
\alias{inject_funs}
\title{Inject functions into the environment of \code{evaluate()}}
\usage{
inject_funs(...)
}
\arguments{
\item{...}{Named arguments of functions. If empty, previously injected
functions will be emptied.}
}
\description{
Create functions in the environment specified in the \code{envir} argument of
\code{evaluate()}. This can be helpful if you want to substitute certain
functions when evaluating the code. To make sure it does not wipe out
existing functions in the environment, only functions that do not exist in
the environment are injected.
}
\note{
For expert use only. Do not use it unless you clearly understand it.
}
\examples{
library(evaluate)
# normally you cannot capture the output of system
evaluate("system('R --version')")

# replace the system() function
inject_funs(system = function(...) cat(base::system(..., intern = TRUE), sep = "\\n"))

evaluate("system('R --version')")

inject_funs()  # empty previously injected functions
}
\keyword{internal}

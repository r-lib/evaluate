% Please edit documentation in R/traceback.r
\name{try_capture_stack}
\alias{try_capture_stack}
\title{Try, capturing stack on error.}
\usage{
try_capture_stack(quoted_code, env)
}
\arguments{
\item{quoted_code}{code to evaluate, in quoted form}

\item{env}{environment in which to execute code}
}
\description{
This is a variant of \code{\link{tryCatch}} that also captures the call
stack if an error occurs.
}
\keyword{internal}

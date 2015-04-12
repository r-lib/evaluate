% Please edit documentation in R/hooks.r
\name{set_hooks}
\alias{set_hooks}
\title{Set hooks.}
\usage{
set_hooks(hooks, action = "append")
}
\arguments{
\item{hooks}{a named list of hooks - each hook can either be a function or
a list of functions.}

\item{action}{\code{"replace"}, \code{"append"} or \code{"prepend"}}
}
\description{
This wraps the base \code{\link{setHook}} function to provide a return
value that makes it easy to undo.
}
\examples{
new <- list(before.plot.new = function() print("Plotted!"))
hooks <- set_hooks(new)
plot(1)
set_hooks(hooks, "replace")
plot(1)
}
\keyword{internal}

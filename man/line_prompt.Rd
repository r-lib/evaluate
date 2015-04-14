% Please edit documentation in R/replay.r
\name{line_prompt}
\alias{line_prompt}
\title{Line prompt.}
\usage{
line_prompt(x, prompt = getOption("prompt"), continue = getOption("continue"))
}
\arguments{
\item{x}{string representing a single expression}

\item{prompt}{prompt for first line}

\item{continue}{prompt for subsequent lines}
}
\value{
a string
}
\description{
Format a single expression as if it had been entered at the command prompt.
}
\keyword{internal}

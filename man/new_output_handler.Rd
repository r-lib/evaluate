% Please edit documentation in R/output.r
\name{new_output_handler}
\alias{new_output_handler}
\alias{output_handler}
\title{Custom output handlers.}
\usage{
new_output_handler(source = identity, text = identity, graphics = identity, 
    message = identity, warning = identity, error = identity, value = render)
}
\arguments{
\item{source}{Function to handle the echoed source code under evaluation.}

\item{text}{Function to handle any textual console output.}

\item{graphics}{Function to handle graphics, as returned by
\code{\link{recordPlot}}.}

\item{message}{Function to handle \code{\link{message}} output.}

\item{warning}{Function to handle \code{\link{warning}} output.}

\item{error}{Function to handle \code{\link{stop}} output.}

\item{value}{Function to handle the values returned from evaluation. If it
only has one argument, only visible values are handled; if it has more
arguments, the second argument indicates whether the value is visible.}
}
\value{
A new \code{output_handler} object
}
\description{
An \code{output_handler} handles the results of \code{\link{evaluate}},
including the values, graphics, conditions. Each type of output is handled by
a particular function in the handler object.
}
\details{
The handler functions should accept an output object as their first argument.
The return value of the handlers is ignored, except in the case of the
\code{value} handler, where a visible return value is saved in the output
list.

Calling the constructor with no arguments results in the default handler,
which mimics the behavior of the console by printing visible values.

Note that recursion is common: for example, if \code{value} does any
printing, then the \code{text} or \code{graphics} handlers may be called.
}

% Please edit documentation in R/eval.r
\name{evaluate}
\alias{evaluate}
\title{Evaluate input and return all details of evaluation.}
\usage{
evaluate(input, envir = parent.frame(), enclos = NULL, debug = FALSE, 
    stop_on_error = 0L, keep_warning = TRUE, keep_message = TRUE, new_device = TRUE, 
    output_handler = default_output_handler)
}
\arguments{
\item{input}{input object to be parsed an evaluated.  Maybe a string,
file connection or function.}

\item{envir}{environment in which to evaluate expressions}

\item{enclos}{when \code{envir} is a list or data frame, this is treated
as the parent environment to \code{envir}.}

\item{debug}{if \code{TRUE}, displays information useful for debugging,
including all output that evaluate captures}

\item{stop_on_error}{if \code{2}, evaluation will stop on first error and you
will get no results back. If \code{1}, evaluation will stop on first error,
but you will get back all results up to that point. If \code{0} will
continue running all code, just as if you'd pasted the code into the
command line.}

\item{keep_warning, keep_message}{whether to record warnings and messages}

\item{new_device}{if \code{TRUE}, will open a new graphics device and
automatically close it after completion. This prevents evaluation from
interfering with your existing graphics environment.}

\item{output_handler}{an instance of \code{\link{output_handler}}
that processes the output from the evaluation. The default simply
prints the visible return values.}
}
\description{
Compare to \code{\link{eval}}, \code{evaluate} captures all of the
information necessary to recreate the output as if you had copied and
pasted the code into a R terminal. It captures messages, warnings, errors
and output, all correctly interleaved in the order in which they occured.
It stores the final result, whether or not it should be visible, and the
contents of the current graphics device.
}

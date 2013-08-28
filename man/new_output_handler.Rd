\name{new_output_handler}
\alias{new_output_handler}
\alias{output_handler}
\title{Custom output handlers.}
\usage{
  new_output_handler(source = identity, text = identity,
    graphics = identity, message = identity,
    warning = identity, error = identity,
    value = render_capture)
}
\arguments{
  \item{source}{Function to handle the echoed source code
  under evaluation.}

  \item{text}{Function to handle any textual console
  output.}

  \item{graphics}{Function to handle graphics, as returned
  by \code{\link{recordPlot}}.}

  \item{message}{Function to handle \code{\link{message}}
  output.}

  \item{warning}{Function to handle \code{\link{warning}}
  output.}

  \item{error}{Function to handle \code{\link{stop}}
  output.}

  \item{value}{Function to handle the visible values, i.e.,
  the return values of evaluation. This function is
  responsible for returning the value in the exact form it
  should appear in the outputs list returned by
  \code{link{evaluate}}.}
}
\value{
  A new \code{output_handler} object
}
\description{
  An \code{output_handler} handles the results of
  \code{\link{evaluate}}, including the values, graphics,
  conditions. Each type of output is handled by a
  particular function in the handler object.
}
\details{
  The handler functions should accept an output object as
  their first argument. The return value of the handlers is
  ignored, except in the case of the value handler, where
  the handler is assumed to process and return the value in
  the exact form it should appear in the output list
  returned by \code{link{evaluate}}.

  The default value handler returns a character vector
  containing the textual output when
  \code{link{print}}/\code{link{output}} is called on the
  object.

  Value handlers which wish to indicate that nothing should
  be added to the output list should return an objected
  created via \code{\link{no_output}}.

  Calling the constructor with no arguments results in the
  default handler, which mimics the behavior of the console
  by printing visible values.

  Note that recursion is common: for example, if
  \code{value} does any printing, then the \code{text} or
  \code{graphics} handlers may be called.
}


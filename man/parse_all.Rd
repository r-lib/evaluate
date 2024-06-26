% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parse_all.R
\name{parse_all}
\alias{parse_all}
\title{Parse, retaining comments}
\usage{
parse_all(x, filename = NULL, allow_error = FALSE)
}
\arguments{
\item{x}{object to parse.  Can be a string, a file connection, or a function.
If a connection, will be opened and closed only if it was closed initially.}

\item{filename}{string overriding the file name}

\item{allow_error}{whether to allow syntax errors in \code{x}}
}
\value{
A data frame two columns, \code{src} and \code{expr}, and one row for each top-level
expression in \code{x}.

\code{src} is a character vector of source code. Each element represents a
complete line (or multi-line) expression, i.e. it always has a terminal \verb{\\n}.

\code{expr}, a list-column of top-level expressions. A top-level expression
is a complete expression which would trigger execution if typed at the
console. Each element is an \code{\link[=expression]{expression()}} object, which can be of any
length. It will be length:
\itemize{
\item 0 if the top-level expression contains only whitespace and/or comments.
\item 1 if the top-level expression is a single scalar (
like \code{TRUE}, \code{1}, or \code{"x"}), name, or call
\item 2 or more if the top-level expression uses \verb{;} to put multiple expressions
on one line.
}

The expressions have their srcrefs removed.

If there are syntax errors in \code{x} and \code{allow_error = TRUE}, the data
frame will have an attribute \code{PARSE_ERROR} that stores the error object.
}
\description{
Works very similarly to parse, but also keeps original formatting and
comments.
}
\examples{
source <- "
  # a comment
  x
  x;y
"
parsed <- parse_all(source)
lengths(parsed$expr)
str(parsed$expr)

}

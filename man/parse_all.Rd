% Please edit documentation in R/parse.r
\name{parse_all}
\alias{parse_all}
\title{Parse, retaining comments.}
\usage{
parse_all(x, filename = NULL)
}
\arguments{
\item{x}{object to parse.  Can be a string, a file connection, or a
function}

\item{filename}{string overriding the file name}
}
\value{
a data.frame with columns \code{src}, the source code, and
  \code{expr}
}
\description{
Works very similarly to parse, but also keeps original formatting and
comments.
}

\name{parse_all}
\alias{parse_all}
\title{Parse, retaining comments.}
\usage{parse_all(x)}

\description{
  Parse, retaining comments. Works very similarly to parse, but also
  keeps original formatting and comments.
}
\value{a data.frame with columns \code{src}, the source code, and 
\code{eval}}
\arguments{
  \item{x}{object to parse.  Can be a string, a file connection, or a
function}
}

# Evaluate

[![Build Status](https://travis-ci.org/yihui/evaluate.svg)](https://travis-ci.org/yihui/evaluate)

Evaluate provides tools that allow you to recreate the parsing, evaluation and
display of R code, with enough information that you can accurately recreate what
happens at the command line. Evaluate + replay works very similarly to
`source()`, but is written in such a way to make it easy to adapt for other
output formats, such as html or latex.

There are three components to the `evaluate` package:

* `parse_all`, a version of parse that keeps expressions with their original
   source code, maintaining formatting and comments.
* `evaluate`, which evaluates each expression produced by `parse_all`, 
   tracking all output, messages, warnings, and errors as their occur, and 
   interleaving them in the correct order with the original source and value
   of the expression.
* `replay`, which outputs these pieces in a way that makes it look like you've
   entered the code at the command line.  This function also serves as a
   template for other output formats.

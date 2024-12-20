---
title: document with error
---


``` r
f <- function() g()
g <- function() h()
h <- function() rlang::abort("!")
f()
```

```
## Error in `h()`:
## ! !
## Backtrace:
##     x
##  1. \-evaluate (local) f()
##  2.   \-evaluate (local) g()
##  3.     \-evaluate (local) h()
##  4.       \-rlang::abort("!")
```

---
title: document with error
---


``` r
rlang::global_entrace()
options(rlang_backtrace_on_error_report = "full")
```


``` r
f <- function() g()
g <- function() h()
h <- function() stop("!")
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
```

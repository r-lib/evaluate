---
title: document with error
---


``` r
f <- function() g()
g <- function() h()
h <- function() stop("!")
f()
```

```
## Error in h(): !
```

g <- function() f("error")
f <- function(x) stop(paste0("Obscure ", x))

try(g())

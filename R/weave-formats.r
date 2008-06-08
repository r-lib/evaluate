sep <- function(...) cat(rep("-", options("width")), sep = "")
nul <- function(...) {}


interactive <- list(
  start = sep,
  stop  = sep,
  message = function(x) {
    message(gsub("\n^", "", x))
  },
  warning = function(x, call) {
    message("Warning in ", deparse(call), " : ", x)
  },
  error = function(x, call) {
    message("Error in ", deparse(call), " : ", x)
    
  },
  out = function(x) {
    cat(x)
  },
  value = function(x, path) {
    print(x)
  },
  src = function(x) {
    lines <- strsplit(x, "\n")[[1]]
    n <- length(lines)
    lines[1] <-   paste(options("prompt"),   lines[1], sep="")
    if (n > 1)
      lines[2:n] <- paste(options("continue"), lines[2:n], sep="")
    
    cat(paste(lines, "\n", collapse=""), sep="")
  }
)
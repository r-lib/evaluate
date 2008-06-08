sep <- function(...) cat(rep("-", options("width")), sep = "")
nul <- function(...) {}


interactive <- list(
  start = nul,
  stop   = nul,
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
    # browser()
    cat(gsub("^\n", "\n\\> ", gsub("(.)\n", "\\1\n+ ", x)), "\n")
  }
)
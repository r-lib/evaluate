cat("One\n")
print("Two")
warning("Three")
print("Four")
message("Five")
stop("Six")
stop("Seven", call. = FALSE)

f <- function(x) {
  print("One")
  message("Two")
  warning("Three")
  stop("Four")
}
f()


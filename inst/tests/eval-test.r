f <- function() {
	cat("One\n")
	print("Two")
	warning("Three")
	print("Four")
	message("Five")
	stop("Six")
}
# 
# g <- function() {
# 	cat("One\n")
# 	warning("Two")
# 	"Three"
# }
# 
# eval.with.details(print("hello"))
# eval.with.details(stop("Error!"))
# eval.with.details(warning("warning!"))
# eval.with.details(f())
# eval.with.details(g())

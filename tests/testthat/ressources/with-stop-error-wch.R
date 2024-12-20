testthat::local_reproducible_output()
withCallingHandlers(
  error = function(cnd) rlang::entrace(cnd),
  evaluate::evaluate(function() {
    f <- function() g()
    h <- function() stop("!")
    f()
  }, stop_on_error = 2L)
)

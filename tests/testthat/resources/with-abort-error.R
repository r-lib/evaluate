testthat::local_reproducible_output()
evaluate::evaluate(
  function() {
    f <- function() g()
    g <- function() h()
    h <- function() rlang::abort("!")
    f()
  },
  stop_on_error = 2L
)

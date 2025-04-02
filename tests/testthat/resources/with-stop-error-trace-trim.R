testthat::local_reproducible_output()
handlers <- evaluate::new_output_handler(
  calling_handlers = list(error = function(cnd) rlang::entrace(cnd))
)
library(evaluate)
options(rlang_trace_top_env = rlang::pkg_env("evaluate"))
evaluate(
  function() {
    f <- function() g()
    g <- function() h()
    h <- function() stop("!")
    f()
  },
  stop_on_error = 2L,
  output_handler = handlers
)

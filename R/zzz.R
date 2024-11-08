# used evaluate() to avoid overhead of calling new_output_handler() repeatedly
evaluate_default_output_handler <- NULL
# used by knitr, as above, but also for value handler
default_output_handler <- NULL

has_rlang <- FALSE

.onLoad <- function(...) {
  evaluate_default_output_handler <<- new_output_handler()
  default_output_handler <<- new_output_handler()
  # Match knitr's expectations
  default_output_handler$value <<- function(x) {
    render(x, visible = TRUE, envir = parent.frame())
  }

  has_rlang <<- requireNamespace("rlang", quietly = TRUE)
}

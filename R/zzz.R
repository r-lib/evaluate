# used by knitr to avoid overheard of calling new_output_handler() repeatedly
default_output_handler <- NULL

.onLoad <- function(...) {
  default_output_handler <<- new_output_handler()
}

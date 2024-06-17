output_type <- function(x) {
  if (is.character(x)) {
    "text"
  } else if (inherits(x, "error")) {
    "error"
  } else if (inherits(x, "warning")) {
    "warning"
  } else if (inherits(x, "message")) {
    "message"
  } else if (inherits(x, "recordedplot")) {
    "plot"
  } else if (inherits(x, "source")) {
    "source"
  } else {
    class(x)[[1]]
  }
}
output_types <- function(x) vapply(x, output_type, character(1))

expect_output_types <- function(x, types) {
  expect_equal(output_types(x), types)
}

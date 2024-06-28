expect_output_types <- function(x, types) {
  output_types <- vapply(x, output_type, character(1))
  expect_equal(output_types, types)
}

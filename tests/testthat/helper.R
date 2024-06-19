evaluate_ <- function(text, ..., envir = parent.frame()) {
  # Trim off leading/trailing new lines and dedent
  text <- gsub("^\n {4}", "", text)
  text <- gsub("\n {4}", "\n", text)
  text <- gsub("\n +$", "", text)
  
  evaluate(text, ..., envir = envir)
}

expect_output_types <- function(x, types) {
  output_types <- vapply(x, output_type, character(1))
  expect_equal(output_types, types)
}

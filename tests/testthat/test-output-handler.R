context("Output handlers")

test_that("text output handler is called with text", {
  text <- NULL
  oh <- new_output_handler(text = function(o) text <<- o)

  evaluate("print('abc')", output_handler = oh)
  expect_equal(text, "[1] \"abc\"\n")
})

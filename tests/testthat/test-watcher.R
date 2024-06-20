test_that("can use sink()", {
  f <- function() {
    sink(withr::local_tempfile())
    print("!!!!!")
    sink()
  }
  expect_output_types(evaluate("f()"), "source")
})

test_that("gives clear error if user kills infrastructure", {
  evaluate("sink()\n1+2")
  evaluate("closeAllConnections()")
})

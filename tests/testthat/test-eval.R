
test_that("can evaluate expressions of all lengths", {
  source <- "
    # a comment
    1
    x <- 2; x
  "
  expect_no_error(evaluate(source))
})

test_that("log_echo causes output to be immediately written to stderr()", {
  f <- function() {
    1
  }
  out <- capture.output(
    res <- evaluate("f()", log_echo = TRUE),
    type = "message"
  )
  expect_equal(out, "f()")

  # But still recorded in eval result
  expect_output_types(res, c("source", "text"))
  expect_equal(res[[1]]$src, "f()")
})

test_that("has a reasonable print method", {
  f <- function() {
    print("1")
    message("2")
    warning("3")
    stop("4")
  }

  expect_snapshot({
    evaluate("f()")
    evaluate("plot(1:3)")
  })  
})

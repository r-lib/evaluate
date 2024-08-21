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

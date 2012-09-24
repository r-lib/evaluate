context("Output")

test_that("open plot windows maintained", {
  n <- length(dev.list())
  capture.output(replay(evaluate(file("plot.r"))))
  expect_that(length(dev.list()), equals(n))
})


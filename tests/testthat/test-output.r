test_that("open plot windows maintained", {
  n <- length(dev.list())
  evaluate(file("plot.r"))
  expect_length(dev.list(), n)
})


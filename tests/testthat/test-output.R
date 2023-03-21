test_that("open plot windows maintained", {
  n <- length(dev.list())
  evaluate(file("plot.R"))
  expect_length(dev.list(), n)
})


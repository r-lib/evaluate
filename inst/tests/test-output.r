context("Output")

test_that("plot windows opened", {
  graphics.off()
  expect_that(length(dev.list()), equals(0))
  capture.output(replay(evaluate(file("plot.r"))))
  expect_that(length(dev.list()), equals(1))
  
  dev.off()
})


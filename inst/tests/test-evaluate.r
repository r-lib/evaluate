context("Evaluation")

test_that("file with only comments runs", {
  ev <- evaluate(file("comment.r"))
  expect_that(length(ev), equals(2))
  
  classes <- sapply(ev, class)
  expect_that(classes, equals(c("source", "source")))
})

test_that("single plot is captured", {
  ev <- evaluate(file("plot.r"))
  expect_that(length(ev), equals(2))
  
  classes <- sapply(ev, class)
  expect_that(classes, equals(c("source", "recordedplot")))
})

test_that("no plot windows open", {
  graphics.off()
  expect_that(length(dev.list()), equals(0))
  evaluate(file("plot.r"))
  expect_that(length(dev.list()), equals(0))
  
})


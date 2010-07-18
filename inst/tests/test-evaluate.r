context("Evaluation")

test_that("file with only comments runs", {
  ev <- evaluate(file("comment.r"))
  expect_that(length(ev), equals(2))
  
  src <- unlist(lapply(ev, evaluate:::is.source))
  expect_that(all(src), equals(TRUE))
})

test_that("no plot windows open", {
  graphics.off()
  expect_that(length(dev.list()), equals(0))
  evaluate(file("plot.r"))
  expect_that(length(dev.list()), equals(0))
  
})
context("Evaluation")

test_that("file with only comments runs", {
  ev <- evaluate(file("comment.r"))
  expect_that(length(ev), equals(2))
  
  classes <- sapply(ev, class)
  expect_that(classes, equals(c("source", "source")))
})

test_that("data sets loaded", {
  ev <- evaluate(file("data.r"))
  expect_that(length(ev), equals(3))
})

# # Don't know how to implement this
# test_that("newlines escaped correctly", {
#   ev <- evaluate("cat('foo\n')")
#   expect_that(ev[[1]]$src, equals("cat('foo\\n'))"))
# })

test_that("terminal newline not needed", {
  ev <- evaluate("cat('foo')")
  expect_that(length(ev), equals(2))
  expect_that(ev[[2]], equals("foo"))
})

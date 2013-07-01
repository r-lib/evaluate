context("Evaluation")

test_that("file with only comments runs", {
  ev <- evaluate(file("comment.r"))
  expect_that(length(ev), equals(2))

  expect_that(classes(ev), equals(c("source", "source")))
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

test_that("S4 methods are displayed with show, not print", {
  setClass("A", contains = "function")
  setMethod("show", "A", function(object) cat("B"))
  a <- new('A', function() b)

  ev <- evaluate("a")
  expect_equal(ev[[2]], "B")
})

test_that("errors during printing visible values are captured", {
  setClass("A", contains = "function")
  setMethod("show", "A", function(object) stop("B"))
  a <- new('A', function() b)

  ev <- evaluate("a")
  stopifnot("error" %in% class(ev[[2]]))
})

op <- options(device = function(...) {
  pdf(file = NULL)
  dev.control("enable")
})

test_that("output and plots interleaved correctly", {
  ev <- evaluate(file("interleave-1.r"))
  expect_equal(classes(ev),
               c("source", "character", "recordedplot", "character", "recordedplot"))

  ev <- evaluate(file("interleave-2.r"))
  expect_equal(classes(ev),
               c("source", "recordedplot", "character", "recordedplot", "character"))
})

options(op)

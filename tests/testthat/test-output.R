test_that("open plot windows maintained", {
  n <- length(dev.list())
  evaluate(file("plot.R"))
  expect_length(dev.list(), n)
})


# new_source -------------------------------------------------------------------

test_that("handles various numbers of arguments", {
  signal_condition <- function(class) {
    signalCondition(structure(list(), class = c(class, "condition")))
  } 
  expected <- structure(list(src = "x"), class = "source")

  # No handler
  expect_equal(new_source("x", quote(x)), expected)

  # One argument
  f1 <- function(src) signal_condition("handler_called")
  expect_condition(out <- new_source("x", quote(x), f1), class = "handler_called")
  expect_equal(out, expected)

  # Two arguments
  f2 <- function(src, call) {signal_condition("handler_called"); NULL}
  expect_condition(out <- new_source("x", quote(x), f2), class = "handler_called")
  expect_equal(out, NULL)

  # Three arguments
  f3 <- function(a, b, c) NULL
  expect_snapshot(new_source("x", quote(x), f3), error = TRUE)
})

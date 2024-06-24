
test_that("file with only comments runs", {
  ev <- evaluate_("
    # This test case contains no executable code
    # but it shouldn't throw an error
  ")
  expect_output_types(ev, c("source", "source"))
})

test_that("can evaluate expressions of all lengths", {
  source <- "
    # a comment
    1
    x <- 2; x
  "
  expect_no_error(evaluate(source))
})

test_that("log_echo causes output to be immediately written to stderr()", {
  f <- function() {
    1
  }
  out <- capture.output(
    res <- evaluate("f()", log_echo = TRUE),
    type = "message"
  )
  expect_equal(out, "f()")

  # But still recorded in eval result
  expect_output_types(res, c("source", "text"))
  expect_equal(res[[1]]$src, "f()")
})

test_that("data sets loaded", {
  skip_if_not_installed("lattice")

  ev <- evaluate_('
    data(barley, package = "lattice")
    barley
  ')
  expect_output_types(ev, c("source", "source", "text"))
})

test_that("terminal newline not needed", {
  ev <- evaluate("cat('foo')")
  expect_output_types(ev, c("source", "text"))
  expect_equal(ev[[2]], "foo")
})

test_that("S4 methods are displayed with show, not print", {
  methods::setClass("A", contains = "function", where = environment())
  methods::setMethod("show", "A", function(object) cat("B"))
  a <- methods::new('A', function() b)

  ev <- evaluate("a")
  expect_equal(ev[[2]], "B")
})

test_that("output and plots interleaved correctly", {
  ev <- evaluate_("
    for (i in 1:2) {
      cat(i)
      plot(i)
    }
  ")
  expect_output_types(ev, c("source", "text", "plot", "text", "plot"))

  ev <- evaluate_("
    for (i in 1:2) {
      plot(i)
      cat(i)
    }
  ")
  expect_output_types(ev, c("source", "plot", "text", "plot", "text"))
})

test_that("multiple expressions on one line can get printed as expected", {
  ev <- evaluate("x <- 1; y <- 2; x; y")
  expect_output_types(ev, c("source", "text", "text"))
})

test_that("check_stop_on_error converts integer to enum", {
  expect_equal(check_stop_on_error(0), "continue")
  expect_equal(check_stop_on_error(1), "stop")
  expect_equal(check_stop_on_error(2), "error")

  expect_snapshot(check_stop_on_error(4), error = TRUE)
})

test_that("all condition handlers first capture output", {
  test <- function() {
    plot(1, main = "one")
    message("this is an message!")
    plot(2, main = "two")
    warning("this is a warning")
    plot(3, main = "three")
    stop("this is an error")
  }
  expect_output_types(
    evaluate("test()"),
    c("source", "plot", "message", "plot", "warning", "plot", "error")
  )
})

test_that("conditions get calls stripped", {
  expect_equal(evaluate("warning('x')")[[2]]$call, NULL)
  expect_equal(evaluate("stop('x')")[[2]]$call, NULL)
})

test_that("envvar overrides keep_* arguments", {
  withr::local_envvar(R_EVALUATE_BYPASS_MESSAGES = "true")
  
  expect_message(ev <- evaluate("message('Hi!')", keep_message = FALSE), "Hi")
  expect_output_types(ev, "source")

  expect_warning(ev <- evaluate("warning('Hi!')", keep_warning = FALSE), "Hi")
  expect_output_types(ev, "source")
})

# messages --------------------------------------------------------------------

test_that("all three states of keep_message work as expected", {
  test <- function() {
    message("Hi!")
  }

  # message captured in output
  expect_no_message(ev <- evaluate("test()", keep_message = TRUE))
  expect_output_types(ev, c("source", "message"))

  # message propagated
  expect_message(ev <- evaluate("test()", keep_message = NA), "Hi")
  expect_output_types(ev, "source")

  # message ignored
  expect_no_message(ev <- evaluate("test()", keep_message = FALSE))
  expect_output_types(ev, "source")
})

# warnings --------------------------------------------------------------------

test_that("respects warn options", {
  # suppress warnings
  withr::local_options(warn = -1)
  ev <- evaluate("warning('hi')")
  expect_output_types(ev, "source")

  # delayed warnings are always immediate in knitr
  withr::local_options(warn = 0)
  ev <- evaluate("warning('hi')")
  expect_output_types(ev, c("source", "warning"))

  # immediate warnings
  withr::local_options(warn = 1)
  ev <- evaluate("warning('hi')")
  expect_output_types(ev, c("source", "warning"))

  # warnings become errors
  withr::local_options(warn = 2)
  ev <- evaluate("warning('hi')")
  expect_output_types(ev, c("source", "error"))
})

test_that("all three states of keep_warning work as expected", {
  test <- function() {
    warning("Hi!")
  }

  # warning captured in output
  expect_no_warning(ev <- evaluate("test()", keep_warning = TRUE))
  expect_output_types(ev, c("source", "warning"))

  # warning propagated
  expect_warning(ev <- evaluate("test()", keep_warning = NA), "Hi")
  expect_output_types(ev, "source")

  # warning ignored
  expect_no_warning(ev <- evaluate("test()", keep_warning = FALSE))
  expect_output_types(ev, "source")
})

test_that("log_warning causes warnings to be emitted", {
  f <- function() {
    warning("Hi!", immediate. = TRUE)
  }
  expect_snapshot(ev <- evaluate("f()", log_warning = TRUE))

  # And still recorded in eval result
  expect_output_types(ev, c("source", "warning"))
  expect_equal(ev[[1]]$src, "f()")
  expect_equal(ev[[2]], simpleWarning("Hi!", quote(f())))
})

# errors ----------------------------------------------------------------------

test_that("an error terminates evaluation of top-level expression", {
  ev <- evaluate("stop('1');2\n3")
  expect_output_types(ev, c("source", "error", "source", "text"))
  expect_equal(ev[[1]]$src, "stop('1');2\n")

  ev <- evaluate("stop('1');2\n3", stop_on_error = 1L)
  expect_equal(ev[[1]]$src, "stop('1');2\n")
  expect_output_types(ev, c("source", "error"))
})

test_that("all three starts of stop_on_error work as expected", {
  ev <- evaluate('stop("1")\n2', stop_on_error = 0L)
  expect_output_types(ev, c("source", "error", "source", "text"))

  ev <- evaluate('stop("1")\n2', stop_on_error = 1L)
  expect_output_types(ev, c("source", "error"))

  expect_snapshot(evaluate('stop("1")\n2', stop_on_error = 2L), error = TRUE)
})

test_that("errors during printing are captured", {
  methods::setClass("A", contains = "function", where = environment())
  methods::setMethod("show", "A", function(object) stop("B"))
  a <- methods::new('A', function() b)

  ev <- evaluate("a")
  expect_output_types(ev, c("source", "error"))
})

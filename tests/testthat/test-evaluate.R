test_that("file with only comments runs", {
  ev <- evaluate(function() {
    # This test case contains no executable code
    # but it shouldn't throw an error
  })
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
  expect_equal(out, c("f()", ""))

  # But still recorded in eval result
  expect_output_types(res, c("source", "text"))
  expect_equal(res[[1]]$src, "f()\n")
})

test_that("ACTIONS_STEP_DEBUG forces log_warning and log_echo to TRUE", {
  f <- function() {
    1
    warning("abc")
  }
  out <- local({
    withr::local_envvar(ACTIONS_STEP_DEBUG = "true")
    capture.output(expect_warning(evaluate("f()"), "abc"), type = "message")
  })
  expect_equal(out, c("f()", ""))
})

test_that("data sets loaded", {
  skip_if_not_installed("lattice")

  ev <- evaluate(function() {
    data(barley, package = "lattice")
    barley
  })
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
  a <- methods::new("A", function() b)

  ev <- evaluate("a")
  expect_equal(ev[[2]], "B")
})

test_that("output and plots interleaved correctly", {
  ev <- evaluate(function() {
    for (i in 1:2) {
      cat(i)
      plot(i)
    }
  })
  expect_output_types(ev, c("source", "text", "plot", "text", "plot"))

  ev <- evaluate(function() {
    for (i in 1:2) {
      plot(i)
      cat(i)
    }
  })
  expect_output_types(ev, c("source", "plot", "text", "plot", "text"))
})

test_that("multiple expressions on one line can get printed as expected", {
  ev <- evaluate("x <- 1; y <- 2; x; y")
  expect_output_types(ev, c("source", "text", "text"))
})

test_that("multiple lines of comments do not lose the terminating \\n", {
  ev <- evaluate("# foo\n#bar")
  expect_output_types(ev, c("source", "source"))
  expect_equal(ev[[1]]$src, "# foo\n")
})

test_that("check_stop_on_error converts integer to enum", {
  expect_equal(check_stop_on_error(0), "continue")
  expect_equal(check_stop_on_error(1), "stop")
  expect_equal(check_stop_on_error(2), "error")

  expect_snapshot(check_stop_on_error(4), error = TRUE)
})

test_that("check_keep converts to logical as expected", {
  expect_true(check_keep(TRUE)$capture)
  expect_false(check_keep(NA)$capture)
  expect_false(check_keep(FALSE)$capture)

  expect_true(check_keep(TRUE)$silence)
  expect_false(check_keep(NA)$silence)
  expect_true(check_keep(FALSE)$silence)
})

test_that("check_keep can integrate log option", {
  # logging means we never silence the ouptut
  expect_false(check_keep(TRUE, log = TRUE)$silence)
  expect_false(check_keep(NA, log = TRUE)$silence)
  expect_false(check_keep(FALSE, log = TRUE)$silence)
})

test_that("new_device = FALSE doesn't open any devices", {
  graphics.off()
  skip_if_not(is.null(dev.list()))

  ev <- evaluate("1", new_device = FALSE)
  expect_equal(dev.list(), NULL)
})


test_that("check_keep errors with bad inputs", {
  expect_snapshot(error = TRUE, {
    check_keep(1, "keep_message")
    check_keep(c(TRUE, FALSE), "keep_message")
  })
})

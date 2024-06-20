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

test_that("log_warning causes warnings to be immediately written to stderr()", {
  f <- function() {
    warning("Hi!", immediate. = TRUE)
  }
  out <- capture.output(
    res <- evaluate("f()", log_warning = TRUE),
    type = "message"
  )
  expect_equal(out, c("Warning in f():", "Hi!"))

  # But still recorded in eval result
  expect_equal(res[[1]]$src, "f()")
  expect_equal(res[[2]], simpleWarning("Hi!", quote(f())))
})

test_that("can conditionally omit output with output handler", {
  hide_source <- function(src, call) {
    if (is.call(call) && identical(call[[1]], quote(hide))) {
      NULL
    } else {
      src
    }
  }
  handler <- new_output_handler(source = hide_source)
  hide <- function(x) invisible(x)

  out <- evaluate("hide(x <- 1)\nx", output_handler = handler)
  expect_output_types(out, c("source", "text"))
  expect_snapshot(replay(out))
})

test_that("source handled called correctly when src is unparseable", {
  src <- NULL
  call <- NULL
  capture_args <- function(src, call) {
    src <<- src
    call <<- call

    src
  }
  handler <- new_output_handler(source = capture_args)

  evaluate("x + ", output_handler = handler)
  expect_equal(src, new_source("x + "))
  expect_equal(call, expression())
})

test_that("visible print() values are not printed", {
  # need to put S3 method in global namespace otherwise it isn't found
  assign("print.FOO_BAR", function(x, ...) NULL, envir = globalenv())
  defer(rm(print.FOO_BAR, envir = globalenv()))

  ev <- evaluate('structure(1, class = "FOO_BAR")')
  expect_output_types(ev, "source")
})

test_that("has a reasonable print method", {
  f <- function() {
    print("1")
    message("2")
    warning("3")
    stop("4")
  }

  expect_snapshot({
    evaluate("f()")
    evaluate("plot(1:3)")
  })  
})

test_that("conditions get calls stripped", {
  expect_equal(evaluate("warning('x')")[[2]]$call, NULL)
  expect_equal(evaluate("stop('x')")[[2]]$call, NULL)
})

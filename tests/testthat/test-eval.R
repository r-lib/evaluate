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
  expect_length(res, 2)
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
  expect_length(res, 2)
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
  expect_length(out, 2)
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

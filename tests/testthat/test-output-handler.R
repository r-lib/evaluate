test_that("calling handlers are checked", {
  expect_snapshot(error = TRUE, {
    check_handlers(list(condition = 1))
    check_handlers(list(function(...) NULL))
    check_handlers(stats::setNames(list(function(...) NULL), NA))
    check_handlers(stats::setNames(list(function(...) NULL), ""))
  })
})

test_that("text output handler is called with text", {
  text <- NULL
  oh <- new_output_handler(text = function(o) text <<- o)

  evaluate("print('abc')", output_handler = oh)
  expect_equal(text, "[1] \"abc\"\n")
})

test_that("graphic output handler not called with no graphics", {
  graphics <- NULL
  oh <- new_output_handler(graphics = function(o) graphics <<- 1)

  evaluate("print('abc')", output_handler = oh)
  expect_equal(graphics, NULL)
})


test_that("can conditionally omit output with output handler", {
  hide_source <- function(src, tle) {
    if (length(tle) == 0) {
      src
    } else if (is.call(tle[[1]]) && identical(tle[[1]][[1]], quote(hide))) {
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


test_that("return value of value handler inserted directly in output list", {
  skip_if_not_installed("ggplot2")

  ev <- evaluate(
    function() {
      rnorm(10)
      x <- list("I\'m a list!")
      ggplot2::ggplot(mtcars, ggplot2::aes(mpg, wt))
    },
    output_handler = new_output_handler(value = identity)
  )
  expect_output_types(ev, c("source", "numeric", "source", "source", "gg"))
})

test_that("invisible values can also be saved if value handler has two arguments", {
  handler <- new_output_handler(value = function(x, visible) {
    x  # always returns a visible value
  })
  expect_true(show_value(handler, FALSE))

  ev <- evaluate("x<-1:10", output_handler = handler)
  expect_output_types(ev, c("source", "integer"))
})

test_that("user can register calling handlers", {
  cnd <- structure(list(), class = c("foobar", "condition"))
  hnd <- function(cnd) handled <<- cnd

  handled <- NULL
  hnd <- function(cnd) handled <<- cnd

  out_hnd <- new_output_handler(calling_handlers = list(foobar = hnd))
  evaluate("signalCondition(cnd)", output_handler = out_hnd)
  expect_s3_class(handled, "foobar")

  handled <- NULL
  out_hnd <- new_output_handler(calling_handlers = list(error = hnd))
  evaluate("stop('tilt')", stop_on_error = 0, output_handler = out_hnd)
  expect_s3_class(handled, "error")
})

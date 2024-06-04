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
  expect_equal(out, "Warning in f(): Hi!")

  # But still recorded in eval result
  expect_length(res, 2)
  expect_equal(res[[1]]$src, "f()")
  expect_equal(res[[2]], simpleWarning("Hi!", quote(f())))
})

test_that("show_warning handles different types of warning", {

  expect_snapshot({
    w1 <- simpleWarning("This is a warning")
    cat(format_warning(w1))
    w2 <- simpleWarning("This is a warning", call = quote(f()))
    cat(format_warning(w2))
    w3 <- rlang::warning_cnd(message = "This is a warning")
    cat(format_warning(w3))
    w4 <- rlang::warning_cnd(message = "This is a warning")
    cat(format_warning(w4))
  })

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

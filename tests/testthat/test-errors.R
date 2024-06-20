test_that("all code run, even after error", {
  ev <- evaluate_('stop("1")\n2')
  expect_output_types(ev, c("source", "error", "source", "text"))
})

test_that("code aborts on error if stop_on_error == 1L", {
  ev <- evaluate('stop("1")\n2', stop_on_error = 1L)
  expect_output_types(ev, c("source", "error"))
})

test_that("code errors if stop_on_error == 2L", {
  expect_snapshot(evaluate('stop("1")', stop_on_error = 2L), error = TRUE)
})

test_that("traceback useful if stop_on_error == 2L", {
  expect_error(evaluate_('
    f <- function() g()
    g <- function() h()
    h <- function() stop("Error")

    f()
  ', stop_on_error = 2L), "Error")

  ## Doesn't work because .Traceback not create when code run
  ## inside try or tryCatch. Can't figure out how to work around.
  ## tryCatch(..., error = function(e) {}) doesn't have enough info
  ## in e, or in the call stack.  options(error = function() {}) doesn't
  ## stop error propagation
  # expect_match(.Traceback[[2]], "h()")
  # expect_match(.Traceback[[3]], "g()")
  # expect_match(.Traceback[[4]], "f()")
})

test_that("capture messages in try() (#88)", {
  f <- function(x) stop(paste0("Obscure ", x))
  g <- function() f("error")

  ev <- evaluate_('try(g())')
  expect_output_types(ev, c("source", "text"))
  expect_match(ev[[2]], "Obscure error")
})

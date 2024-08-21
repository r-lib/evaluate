test_that("capture messages in try() (#88)", {
  f <- function(x) stop(paste0("Obscure ", x))
  g <- function() f("error")

  ev <- evaluate("try(g())")
  expect_output_types(ev, c("source", "text"))
  expect_match(ev[[2]], "Obscure error")
})

test_that("code can use own sink", {
  f <- function() {
    con <- file("")
    defer(close(con))

    sink(con)
    cat("One")
    sink()
  }
  ev <- evaluate("f()\n1")
  expect_output_types(ev, c("source", "source", "text"))
})

test_that("evaluate preserves externally created sinks", {
  sink(withr::local_tempfile())
  defer(sink())
  n <- sink.number()

  ev <- evaluate("1")
  expect_output_types(ev, c("source", "text"))

  expect_equal(sink.number(), n)
})

test_that("evaluate recovers from closed sink", {
  expect_snapshot(ev <- evaluate("sink()\n1"))
  expect_output_types(ev, c("source", "source", "text"))
})

test_that("unbalanced sink doesn't break evaluate", {
  path <- withr::local_tempfile()
  ev <- evaluate(function() {
    sink(path)
    1
    1
  })
  expect_output_types(ev, c("source", "source", "source"))
})

test_that("evaluate recovers from closed connection", {
  expect_snapshot(ev <- evaluate("closeAllConnections()\n1"))
  expect_output_types(ev, c("source", "source", "text"))
})

test_that("isValid() works correctly", {
  con1 <- file("")
  expect_true(isValid(con1))
  close(con1)
  expect_false(isValid(con1))

  con2 <- file("")
  expect_false(isValid(con1)) # isOpen would return TRUE here
  expect_true(isValid(con2))
  close(con2)
})

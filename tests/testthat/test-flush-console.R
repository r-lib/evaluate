test_that("flush_console() is a null op at top-level", {
  expect_no_error(flush_console())

})

test_that("can use flush_console() inside evaluate", {
  test <- function() {
    cat("hi")
    flush_console()
    cat("bye")
  }
  ev <- evaluate("test()")
  expect_equal(ev[[2]], "hi")
  expect_equal(ev[[3]], "bye")
})

test_that("replay() should work when print() returns visible NULLs", {
  old <- options(prompt = "> ")
  on.exit(options(old), add = TRUE)

  # need to put S3 method in global namespace otherwise it isn't found
  assign("print.FOO_BAR", function(x, ...) NULL, envir = globalenv())
  on.exit(rm(print.FOO_BAR, envir = globalenv()), add = TRUE)

  ret <- evaluate('structure(1, class = "FOO_BAR")')
  expect_snapshot(replay(ret))
})

test_that("format_condition handles different types of warning", {
  expect_snapshot({
    w1 <- simpleWarning("This is a warning")
    cat(format_condition(w1))
    w2 <- simpleWarning("This is a warning", call = quote(f()))
    cat(format_condition(w2))
    w3 <- rlang::warning_cnd(message = "This is a warning")
    cat(format_condition(w3))
    w4 <- rlang::warning_cnd(message = "This is a warning")
    cat(format_condition(w4))
  })
})
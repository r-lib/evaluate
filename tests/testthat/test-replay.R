library(evaluate)

test_that("replay() should work when print() returns visible NULLs", {
  old <- options(prompt = "> ")
  on.exit(options(old), add = TRUE)

  # need to put S3 method in global namespace otherwise it isn't found
  assign("print.FOO_BAR", function(x, ...) NULL, envir = globalenv())
  on.exit(rm(print.FOO_BAR, envir = globalenv()), add = TRUE)

  ret <- evaluate('structure(1, class = "FOO_BAR")')
  expect_snapshot(replay(ret))
})

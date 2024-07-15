test_that("replay() should work when print() returns visible NULLs", {
  withr::local_options(prompt = "> ")

  print.FOO_BAR <- function(x, ...) NULL
  ret <- evaluate('structure(1, class = "FOO_BAR")')
  expect_snapshot(replay(ret))
})

test_that("replay handles various output types", {
  ev <- evaluate(function() {
    print("1")
    message("2")
    warning("3")
    stop("4")
  })
  expect_snapshot(replay(ev))
})

test_that("replay handles rlang conditions", {
  ev <- evaluate(function() {
    rlang::inform("2")
    rlang::warn("3")
    rlang::abort("4", call = NULL)
  })
  expect_snapshot(replay(ev))
})

test_that("replace nicely formats multiple lines", {
  ev <- evaluate("1 + \n 2")
  expect_snapshot(replay(ev))
})

test_that("can replay plots", {
  ev <- evaluate("plot(1)")

  path <- withr::local_tempfile()
  pdf(path)
  expect_output(replay(ev))
  dev.off()

  expect_true(file.exists(path))
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

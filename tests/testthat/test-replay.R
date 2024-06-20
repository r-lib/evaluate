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

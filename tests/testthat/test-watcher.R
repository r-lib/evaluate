
test_that("capture messages in try() (#88)", {
  f <- function(x) stop(paste0("Obscure ", x))
  g <- function() f("error")

  ev <- evaluate_('try(g())')
  expect_output_types(ev, c("source", "text"))
  expect_match(ev[[2]], "Obscure error")
})

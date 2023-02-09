test_that("{ not removed", {

  f <- function() {
    for (i in 1:3) {
      plot(rnorm(100))
      lines(rnorm(100))
    }
  }

  expect_equal(nrow(parse_all(f)), 1)
})

test_that("parse(allow_error = TRUE/FALSE)", {
  expect_error(parse_all('x <-', allow_error = FALSE))
  res <- parse_all('x <-', allow_error = TRUE)
  expect_true(inherits(attr(res, 'PARSE_ERROR'), 'error'))
})

# test some multibyte characters when the locale is UTF8 based
if (isTRUE(l10n_info()[['UTF-8']])) {

  test_that("double quotes in Chinese characters not destroyed", {
    expect_identical(parse_all(c('1+1', '"你好"'))[2, 1], '"你好"')
  })

  test_that("multibyte characters are parsed correct", {
    code <- c("ϱ <- 1# g / ml", "äöüßÄÖÜπ <- 7 + 3# nonsense")
    expect_identical(parse_all(code)$src, append_break(code))
  })
}

test_that("can ignore parse errors", {
  expect_error(evaluate('x <-', stop_on_error = 0), NA)
})

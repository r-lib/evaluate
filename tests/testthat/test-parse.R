test_that("expr is always an expression", {
  expect_equal(parse_all("#")$expr[[1]], expression())
  expect_equal(parse_all("1")$expr[[1]], expression(1), ignore_attr = "srcref")
  expect_equal(parse_all("1;2")$expr[[1]], expression(1, 2), ignore_attr = "srcref")

  parsed <- parse_all("#\n1\n1;2")
  expect_equal(lengths(parsed$expr), c(0, 1, 2))
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

# input types ------------------------------------------------------------------

test_that("can parse a call", {
  out <- parse_all(quote(f(a, b, c)))
  expect_equal(out$src, "f(a, b, c)")
  expect_equal(
    out$expr,
    I(list(expression(f(a, b, c)))),
    ignore_attr = "srcref"
  )
})

test_that("can parse a connection", {
  path <- withr::local_tempfile(lines = c("# 1", "1 + 1"))
  cur_cons <- getAllConnections()

  con <- file(path)
  out <- parse_all(con)

  expect_equal(out$src, c("# 1\n", "1 + 1"))
  expect_equal(
    out$expr,
    I(list(expression(), expression(1 + 1))),
    ignore_attr = "srcref"
  )

  # Doesn't leave any connections around
  expect_equal(getAllConnections(), cur_cons)
})

test_that("can parse a function", {
  out <- parse_all(function() {
    # Hi
    1 + 1
  })
  expect_equal(out$src, c("# Hi\n", "1 + 1"))
  expect_equal(
    out$expr,
    I(list(expression(), expression(1 + 1))),
    ignore_attr = "srcref"
  )
})

# find_function_body -----------------------------------------------------------

test_that("parsing a function parses its body", {
  out <- parse_all(function() {
    # Hi
    1 + 1
  })
  expect_equal(out$src, c("# Hi\n", "1 + 1"))
})

test_that("dedents function body", {
  f <- function() {
    1 + 1
  }
  expect_equal(find_function_body(f), "1 + 1")
})

test_that("preserves src if possible", {
  f <- function() {
    1 +  1 # hi
  }
  expect_equal(find_function_body(f), "1 +  1 # hi")

  f <- removeSource(f)
  expect_equal(find_function_body(f), "1 + 1")
})

test_that("isn't flumoxed by nested parens", {
  f <- function() {
    {
      1 + 1
    }
  }
  expect_equal(find_function_body(f), c("{", "  1 + 1", "}")) 
})

test_that("works if no parens", {
  f <- function() 1 + 1
  expect_equal(find_function_body(f), "1 + 1")

  f <- function() (
    1 + 1
  )
  expect_equal(find_function_body(f), "(1 + 1)")
})

test_that("can handle empty body", {
  f <- function() {}
  expect_equal(find_function_body(f), character())
})

test_that("can parse even if no expressions", {
  expect_equal(parse_all("")$src, "")
  expect_equal(parse_all("#")$src, "#")
  expect_equal(parse_all("#\n\n")$src, c("#\n", "\n"))
})

test_that("preserves trailing nl", {
  expect_equal(parse_all("x")$src, "x")
  expect_equal(parse_all("x\n")$src, "x\n")

  expect_equal(parse_all("")$src, "")
  expect_equal(parse_all("\n")$src, "\n")

  expect_equal(parse_all("{\n1\n}")$src, "{\n1\n}")
  expect_equal(parse_all("{\n1\n}\n")$src, "{\n1\n}\n")

  # even empty lines
  expect_equal(parse_all("a\n\nb")$src, c("a\n", "\n", "b"))
  expect_equal(parse_all("a\n\nb\n")$src, c("a\n", "\n", "b\n"))
  
  expect_equal(parse_all("\n\n")$src, c("\n", "\n"))
})

test_that("a character vector is equivalent to a multi-line string", {
  expect_equal(parse_all(c("a", "b")), parse_all(c("a\nb")))
})

test_that("recombines multi-expression TLEs", {
  expect_equal(
    parse_all("1;2;3")$expr[[1]],
    expression(1, 2, 3),
    ignore_attr = "srcref"
  )
  expect_equal(
    parse_all("1+\n2;3")$expr[[1]],
    expression(1 + 2, 3),
    ignore_attr = "srcref"
  )
  expect_equal(
    parse_all("1+\n2;3+\n4; 5")$expr[[1]],
    expression(1 + 2, 3 + 4, 5),
    ignore_attr = "srcref"
  )
})

test_that("re-integrates lines without expressions", {
  expect_equal(parse_all("1\n\n2")$src, c("1\n", "\n", "2"))
  expect_equal(parse_all("1\n#\n2")$src, c("1\n", "#\n", "2"))
})

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

  # And correctly flows through to evaluate
  expect_no_error(evaluate('x <-', stop_on_error = 0))
})

test_that("double quotes in Chinese characters not destroyed", {
  skip_if_not(l10n_info()[['UTF-8']])

  expect_identical(parse_all(c('1+1', '"你好"'))[2, 1], '"你好"')
})

test_that("multibyte characters are parsed correct", {
  skip_if_not(l10n_info()[['UTF-8']])
  
  code <- c("ϱ <- 1# g / ml\n", "äöüßÄÖÜπ <- 7 + 3# nonsense")
  expect_identical(parse_all(code)$src, code)
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

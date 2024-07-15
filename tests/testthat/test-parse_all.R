test_that("can parse empty input", {
  expect_equal(parse_all(character())$src, character())
})

test_that("can parse even if no expressions", {
  expect_equal(parse_all("")$src, "\n")
  expect_equal(parse_all("#")$src, "#\n")
  expect_equal(parse_all("#\n\n")$src, c("#\n", "\n"))
})

test_that("every line gets nl", {
  expect_equal(parse_all("x")$src, "x\n")
  expect_equal(parse_all("")$src, "\n")
  expect_equal(parse_all("\n")$src, "\n")

  # even empty lines
  expect_equal(parse_all("a\n\nb")$src, c("a\n", "\n", "b\n"))
  expect_equal(parse_all("a\n\nb\n")$src, c("a\n", "\n", "b\n"))
  
  expect_equal(parse_all("\n\n")$src, c("\n", "\n"))
})

test_that("empty lines are never silently dropped", {
  # It's not possible to simulate problem directly from code, but it can occur 
  # in knitr
  # ```{r, tidy = TRUE}`
  # for (i in 1) {}
  # # two blank lines below
  # 
  # 
  # 1
  # ```
  expect_equal(parse_all(c("\n", "", "1"))$src, c("\n", "\n", "1\n"))
})

test_that("a character vector is equivalent to a multi-line string", {
  expect_equal(parse_all(c("a", "b")), parse_all(c("a\nb")))
})

test_that("recombines multi-expression TLEs", {
  expect_equal(parse_all("1;2;3")$expr[[1]], expression(1, 2, 3))
  expect_equal(parse_all("1+\n2;3")$expr[[1]], expression(1 + 2, 3))
  expect_equal(
    parse_all("1+\n2;3+\n4; 5")$expr[[1]],
    expression(1 + 2, 3 + 4, 5)
  )
})

test_that("re-integrates lines without expressions", {
  expect_equal(parse_all("1\n\n2")$src, c("1\n", "\n", "2\n"))
  expect_equal(parse_all("1\n#\n2")$src, c("1\n", "#\n", "2\n"))
})

test_that("expr is always an expression", {
  expect_equal(parse_all("#")$expr[[1]], expression())
  expect_equal(parse_all("1")$expr[[1]], expression(1))
  expect_equal(parse_all("1;2")$expr[[1]], expression(1, 2))

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

  out <- parse_all(c('1+1', '"你好"'))
  expect_equal(out$src[[2]], '"你好"\n')
  expect_equal(out$expr[[2]], expression("你好"))
})

test_that("multibyte characters are parsed correctly", {
  skip_if_not(l10n_info()[['UTF-8']])
  
  code <- c("ϱ <- 1# g / ml", "äöüßÄÖÜπ <- 7 + 3# nonsense")
  out <- parse_all(code)
  expect_equal(out$src, paste0(code, "\n"))
})

# input types ------------------------------------------------------------------

test_that("can parse a call", {
  out <- parse_all(quote(f(a, b, c)))
  expect_equal(out$src, "f(a, b, c)\n")
  expect_equal(out$expr, list(expression(f(a, b, c))))
})

test_that("can parse a connection", {
  path <- withr::local_tempfile(lines = c("# 1", "1 + 1"))
  cur_cons <- getAllConnections()

  con <- file(path)
  out <- parse_all(con)

  expect_equal(out$src, c("# 1\n", "1 + 1\n"))
  expect_equal(out$expr, list(expression(), expression(1 + 1)))

  # Doesn't leave any connections around
  expect_equal(getAllConnections(), cur_cons)
})

test_that("can parse a function", {
  out <- parse_all(function() {
    # Hi
    1 + 1
  })
  expect_equal(out$src, c("# Hi\n", "1 + 1\n"))
  expect_equal(out$expr, list(expression(), expression(1 + 1)))
})

# find_function_body -----------------------------------------------------------

test_that("parsing a function parses its body", {
  out <- parse_all(function() {
    # Hi
    1 + 1
  })
  expect_equal(out$src, c("# Hi\n", "1 + 1\n"))
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

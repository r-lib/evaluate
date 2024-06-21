test_that("file with only comments runs", {
  ev <- evaluate_("
    # This test case contains no executable code
    # but it shouldn't throw an error
  ")
  expect_output_types(ev, c("source", "source"))
})

test_that("data sets loaded", {
  skip_if_not_installed("lattice")

  ev <- evaluate_('
    data(barley, package = "lattice")
    barley
  ')
  expect_output_types(ev, c("source", "source", "text"))
})

# # Don't know how to implement this
# test_that("newlines escaped correctly", {
#   ev <- evaluate("cat('foo\n')")
#   expect_that(ev[[1]]$src, equals("cat('foo\\n'))"))
# })

test_that("terminal newline not needed", {
  ev <- evaluate("cat('foo')")
  expect_output_types(ev, c("source", "text"))
  expect_equal(ev[[2]], "foo")
})

test_that("S4 methods are displayed with show, not print", {
  methods::setClass("A", contains = "function", where = environment())
  methods::setMethod("show", "A", function(object) cat("B"))
  a <- methods::new('A', function() b)

  ev <- evaluate("a")
  expect_equal(ev[[2]], "B")
})

test_that("errors during printing visible values are captured", {
  methods::setClass("A", contains = "function", where = environment())
  methods::setMethod("show", "A", function(object) stop("B"))
  a <- methods::new('A', function() b)

  ev <- evaluate("a")
  expect_output_types(ev, c("source", "error"))
})


test_that("output and plots interleaved correctly", {
  ev <- evaluate_("
    for (i in 1:2) {
      cat(i)
      plot(i)
    }
  ")
  expect_output_types(ev, c("source", "text", "plot", "text", "plot"))

  ev <- evaluate_("
    for (i in 1:2) {
      plot(i)
      cat(i)
    }
  ")
  expect_output_types(ev, c("source", "plot", "text", "plot", "text"))
})

test_that("multiple expressions on one line can get printed as expected", {
  ev <- evaluate("x <- 1; y <- 2; x; y")
  expect_output_types(ev, c("source", "text", "text"))
})

test_that("multiple lines of comments do not lose the terminating \\n", {
  ev <- evaluate("# foo\n#bar")
  expect_output_types(ev, c("source", "source"))
  expect_equal(ev[[1]]$src, "# foo\n")
})

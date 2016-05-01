context("Output handlers")

test_that("text output handler is called with text", {
  text <- NULL
  oh <- new_output_handler(text = function(o) text <<- o)

  evaluate("print('abc')", output_handler = oh)
  expect_equal(text, "[1] \"abc\"\n")
})

test_that("graphic output handler not called with no graphics", {
  graphics <- NULL
  oh <- new_output_handler(graphics = function(o) graphics <<- 1)

  evaluate("print('abc')", output_handler = oh)
  expect_equal(graphics, NULL)
})


test_that("output handler with flushing", {
  code <- "
  for (i in 1:2){
    cat(\"text1\")
  }
  print(\"break\")
  for (i in 1:2){
    cat(\"text2\")
    flush.console()
  }
  print(\"break\")
  for (i in 1:2){
    cat(\"text3\")
    flush(stdout())
  }
  print(\"break\")
  for (i in 1:2){
    print(\"text4\")
  }"

  l = list()
  txt <- function(o, type) {
    t <- paste(o, collapse = '\n')
    l[length(l)+1] <<- t
  }
  oh <- new_output_handler(source = identity,
                           text = function(o) txt(o, "text"),
                           graphics = function(o) txt("plot", "text"),
                           message = function(o) txt(o, "message"),
                           warning = function(o) txt(o, "warn"),
                           error = function(o) txt(o, "error"),
                           value = identity)

  # first without ...
  x <- evaluate(code, output_handler = oh)
  # ... then with flushing...
  x <- evaluate(code, output_handler = oh, enable_flush = TRUE)
  exp = list("text1text1", "[1] \"break\"\n",
             "text2text2", "[1] \"break\"\n",
             "text3text3", "[1] \"break\"\n",
             "[1] \"text4\"\n[1] \"text4\"\n",
             "text1text1", "[1] \"break\"\n",
             "text2", "text2", "[1] \"break\"\n",
             "text3", "text3", "[1] \"break\"\n",
             "[1] \"text4\"\n[1] \"text4\"\n")
  expect_equal(l, exp)
})

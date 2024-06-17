test_that("single plot is captured", {
  ev <- evaluate(file("plot.R"))
  expect_output_types(ev, c("source", "plot"))
})

test_that("ggplot is captured", {
  skip_if_not_installed("ggplot2")

  ev <- evaluate(file("ggplot.R"))
  expect_output_types(ev, c("source", "source", "plot"))
})

test_that("plot additions are captured", {
  ev <- evaluate(file("plot-additions.R"))
  expect_output_types(ev, c("source", "plot", "source", "plot"))
})

test_that("blank plots by plot.new() are preserved", {
  ev <- evaluate(file("plot-new.R"))
  expect_output_types(ev, rep(c("source", "plot"), 5)
  )
})

test_that("base plots in a single expression are captured", {
  ev <- evaluate(file("plot-loop.R"))
  expect_output_types(ev, c("source", "plot", "plot", "plot"))
})

test_that("ggplot2 plots in a single expression are captured", {
  skip_if_not_installed("ggplot2")

  ev <- evaluate(file("ggplot-loop.R"))
  expect_output_types(ev, c("source", "source", "plot", "plot"))
})

test_that("Empty ggplot should not be recorded", {
  skip_if_not_installed("ggplot2")
  ev <- evaluate(file(test_path("ggplot-empty-1.R")))
  expect_output_types(ev, c("source", "source", "error"))
  
  ev <- evaluate(file(test_path("ggplot-empty-2.R")))
  expect_output_types(ev, c("source", "source", "error"))
})

test_that("multirow graphics are captured only when complete", {
  ev <- evaluate(file("plot-multi.R"))

  expect_output_types(ev, c(rep("source", 5), "plot"))
})

test_that("multirow graphics are captured on close", {
  ev <- evaluate(file("plot-multi-missing.R"))

  expect_output_types(ev, c(rep("source", 4), "plot"))
})

test_that("plots are captured in a non-rectangular layout", {
  ev <- evaluate(file("plot-multi-layout.R"))
  expect_output_types(ev, c("source", "plot", "plot", "plot"))

  ev <- evaluate(file("plot-multi-layout2.R"))
  expect_output_types(ev, rep(c("source", "plot"), c(4, 2)))
})

test_that("changes in parameters don't generate new plots", {
  ev <- evaluate(file("plot-par.R"))
  expect_output_types(ev, c("source", "plot", "source", "source", "plot"))
})

test_that("plots in a loop are captured even the changes seem to be from par only", {
  ev <- evaluate(file("plot-par2.R"))
  expect_output_types(
    ev,
    c("source", "plot", "source", "source", "plot", "plot", "plot")
  )
})

test_that("strwidth()/strheight() should not produce new plots", {
  ev <- evaluate(file("plot-strwidth.R"))
  expect_output_types(ev, c("source", "source", "source", "source", "plot"))
})

test_that("clip() does not produce new plots", {
  ev <- evaluate(file("plot-clip.R"))
  expect_output_types(ev, c("source", "plot", "source", "source", "plot"))
})

test_that("perspective plots are captured", {
  ev <- evaluate(file("plot-persp.R"))
  expect_output_types(ev, rep(c("source", "plot"), c(6, 3)))
})

test_that("an incomplete plot with a comment in the end is also captured", {
  ev <- evaluate(file("plot-last-comment.R"))
  expect_output_types(ev, rep(c("source", "plot"), c(3, 1)))
})

# a bug report yihui/knitr#722
test_that("repeatedly drawing the same plot does not omit plots randomly", {
  expect_true(all(replicate(100, length(evaluate("plot(1:10)"))) == 2))
})

# test_that("no plot windows open", {
#   graphics.off()
#   expect_equal(length(dev.list()), 0)
#   evaluate(file("plot.R"))
#   expect_equal(length(dev.list()), 0)
# })

test_that("by default, evaluate() always records plots regardless of the device", {
  op <- options(device = pdf)
  on.exit(options(op))
  ev <- evaluate("plot(1)")
  expect_length(ev, 2)
})

test_that("Rplots.pdf files are not created", {
  op <- options(device = pdf)
  on.exit(options(op))
  evaluate(file("plot.R"))
  expect_false(file.exists("Rplots.pdf"))
})

# https://github.com/yihui/knitr/issues/2297
test_that("existing plots will not leak into evaluate()", {
  pdf(NULL)
  dev.control('enable')
  d <- dev.cur()
  plot(1, 1)
  ev <- evaluate(c('dev.new()', 'dev.off()', 'plot.new()', 'plot(1:10, 1:10)'))
  dev.off(d)
  expect_output_types(ev, c('source', 'text', 'plot')[c(1, 1, 2, 1, 3, 1, 3)])
})

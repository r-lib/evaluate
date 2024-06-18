test_that("single plot is captured", {
  ev <- evaluate("plot(1:10)")
  expect_output_types(ev, c("source", "plot"))
})

test_that("ggplot is captured", {
  skip_if_not_installed("ggplot2")
  ev <- evaluate(
    "ggplot2::ggplot(mtcars, ggplot2::aes(mpg, wt)) + ggplot2::geom_point()"
  )
  expect_output_types(ev, c("source", "plot"))
})

test_that("plot additions are captured", {
  ev <- evaluate_("
    plot(1:10)
    lines(1:10)
  ")
  expect_output_types(ev, c("source", "plot", "source", "plot"))
})

test_that("blank plots by plot.new() are preserved", {
  ev <- evaluate_("
    plot.new()
    plot(1:10)
    plot.new()
    plot(1:10)
    plot.new()
  ")
  expect_output_types(ev, rep(c("source", "plot"), 5))
})

test_that("base plots in a single expression are captured", {
  ev <- evaluate_("
    for (i in 1:3) {
      plot(rnorm(100))
    }
  ")
  expect_output_types(ev, c("source", "plot", "plot", "plot"))
})

test_that("ggplot2 plots in a single expression are captured", {
  skip_if_not_installed("ggplot2")

  ev <- evaluate_("
    suppressPackageStartupMessages(library(ggplot2))
    for (j in 1:2) {
      # ggplot2 has been loaded previously
      print(ggplot(data.frame(x = rnorm(30), y = runif(30)), aes(x, y)) + geom_point())
    }
  ")
  expect_output_types(ev, c("source", "source", "plot", "plot"))
})

test_that("erroring ggplots should not be recorded", {
  skip_if_not_installed("ggplot2")
  
  # error in aesthetics
  ev <- evaluate_("
    suppressPackageStartupMessages(library(ggplot2))
    ggplot(iris) + aes(XXXXXXXXXX, Sepal.Length) + geom_boxplot()
  ")
  expect_output_types(ev, c("source", "source", "error"))
  
  # error in geom
  ev <- evaluate_("
    suppressPackageStartupMessages(library(ggplot2))
    ggplot(iris) + aes(Species, Sepal.Length) + geom_bar()
  ")
  expect_output_types(ev, c("source", "source", "error"))
})

test_that("multirow graphics are captured only when complete", {
  ev <- evaluate_("
    par(mfrow = c(2, 2))
    plot(1)
    plot(2)
    plot(3)
    plot(4)
  ")
  expect_output_types(ev, c(rep("source", 5), "plot"))
})

test_that("multirow graphics are captured on close", {
  ev <- evaluate_("
    par(mfrow = c(2, 2))
    plot(1)
    plot(2)
    plot(3)
  ")

  expect_output_types(ev, c(rep("source", 4), "plot"))
})

test_that("plots are captured in a non-rectangular layout", {
  ev <- evaluate_("
    for (j in 1:3) {
      layout(matrix(c(1, 2, 1, 3, 4, 4), 3, 2, byrow = TRUE))
      plot(rnorm(10))
      plot(rnorm(10))
      plot(rnorm(10))
      plot(rnorm(10))
    }
  ")
  expect_output_types(ev, c("source", "plot", "plot", "plot"))

  ev <- evaluate_("
    layout(matrix(c(1, 2, 1, 3, 4, 4), 3, 2, byrow = TRUE))
    # another expression before drawing the plots
    x <- 1 + 1
    for (j in 1:2) {
      plot(rnorm(10))
      plot(rnorm(10))
      plot(rnorm(10))
      plot(rnorm(10))
    }
  ")
  expect_output_types(ev, rep(c("source", "plot"), c(4, 2)))
})

test_that("changes in parameters don't generate new plots", {
  ev <- evaluate_("
    plot(1)
    par(mar = rep(0, 4))
    plot(2)
  ")
  expect_output_types(ev, c("source", "plot", "source", "source", "plot"))
})

test_that("plots in a loop are captured even the changes seem to be from par only", {
  ev <- evaluate_('
    barplot(table(mtcars$mpg), main = "All")
    # should capture all plots in this loop
    for (numcyl in levels(as.factor(mtcars$cyl))) {
      barplot(table(mtcars$mpg[mtcars$cyl == numcyl]), main = paste("cyl = ", numcyl))
    }
  ')
  expect_output_types(
    ev,
    c("source", "plot", "source", "source", "plot", "plot", "plot")
  )
})

test_that("strwidth()/strheight() should not produce new plots", {
  ev <- evaluate_("
    x <- strwidth('foo', 'inches')
    y <- strheight('foo', 'inches')
    par(mar = c(4, 4, 1, 1))
    plot(1)
  ")
  expect_output_types(ev, c("source", "source", "source", "source", "plot"))
})

test_that("clip() does not produce new plots", {
  ev <- evaluate_("
    plot(rnorm(100), rnorm(100))
    clip(-1, 1, -1, 1)
    points(rnorm(100), rnorm(100), col = 'red')
  ")
  expect_output_types(ev, c("source", "plot", "source", "source", "plot"))
})

test_that("perspective plots are captured", {
  ev <- evaluate_("
    x <- seq(-10, 10, length.out = 30)
    y <- x
    ff <- function(x,y) { r <- sqrt(x^2 + y^2); 10 * sin(r) / r }
    z <- outer(x, y, ff)
    z[is.na(z)] <- 1
    for (i in 1:3) {
      persp(x, y, z, phi = 30 + i * 10, theta = 30)
    }
  ")
  expect_output_types(ev, rep(c("source", "plot"), c(6, 3)))
})

test_that("an incomplete plot with a comment in the end is also captured", {
  ev <- evaluate_("
    par(mfrow = c(3, 3))
    for (i in 1:7)
      image(volcano)
    # comment
  ")
  expect_output_types(ev, rep(c("source", "plot"), c(3, 1)))
})

# a bug report yihui/knitr#722
test_that("repeatedly drawing the same plot does not omit plots randomly", {
  expect_true(all(replicate(100, length(evaluate("plot(1:10)"))) == 2))
})

# test_that("no plot windows open", {
#   graphics.off()
#   expect_equal(length(dev.list()), 0)
#   evaluate("plot(1)")
#   expect_equal(length(dev.list()), 0)
# })

test_that("by default, evaluate() always records plots regardless of the device", {
  op <- options(device = pdf)
  on.exit(options(op))
  ev <- evaluate("plot(1)")
  expect_output_types(ev, c("source", "plot"))
})

test_that("Rplots.pdf files are not created", {
  ev <- evaluate("plot(1)")
  expect_false(file.exists("Rplots.pdf"))
})

# https://github.com/yihui/knitr/issues/2297
test_that("existing plots will not leak into evaluate()", {
  withr::local_options(device = function() pdf(NULL))
  
  pdf(NULL)
  dev.control('enable')
  d <- dev.cur()
  plot(1, 1)
  ev <- evaluate(c('dev.new()', 'dev.off()', 'plot.new()', 'plot(1:10, 1:10)'))
  dev.off(d)
  expect_output_types(ev, c('source', 'text', 'plot')[c(1, 1, 2, 1, 3, 1, 3)])
})

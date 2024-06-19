test_that("single plot is captured", {
  ev <- evaluate("plot(1:10)")
  expect_output_types(ev, c("source", "plot"))
})

test_that("plot additions are captured", {
  ev <- evaluate_("
    plot(1:10)
    lines(1:10)
  ")
  expect_output_types(ev, c("source", "plot", "source", "plot"))
})

test_that("blank plots created by plot.new() are preserved", {
  ev <- evaluate_("
    plot.new()
    plot(1:10)
    plot.new()
    plot(1:10)
    plot.new()
  ")
  expect_output_types(ev, rep(c("source", "plot"), 5))
})

test_that("evaluate doesn't open plots or create files", {
  n <- length(dev.list())
  evaluate("plot(1)")

  expect_false(file.exists("Rplots.pdf"))
  expect_equal(length(dev.list()), n)
})

test_that("base plots in a single expression are captured", {
  ev <- evaluate_("
    {
      plot(rnorm(100))
      plot(rnorm(100))
      plot(rnorm(100))
    }
  ")
  expect_output_types(ev, c("source", "plot", "plot", "plot"))
})

test_that("captures ggplots", {
  skip_if_not_installed("ggplot2")
  ev <- evaluate(
    "ggplot2::ggplot(mtcars, ggplot2::aes(mpg, wt)) + ggplot2::geom_point()"
  )
  expect_output_types(ev, c("source", "plot"))

  ev <- evaluate_("
    for (j in 1:2) {
      print(ggplot2::ggplot(mtcars, ggplot2::aes(mpg, wt)) + ggplot2::geom_point())
    }
  ")
  expect_output_types(ev, c("source", "plot", "plot"))
})

test_that("erroring ggplots should not be recorded", {
  skip_if_not_installed("ggplot2")
  
  # error in aesthetics
  ev <- evaluate_("
    ggplot2::ggplot(iris, ggplot2::aes(XXXXXXXXXX, Sepal.Length) + ggplot2::geom_boxplot()
  ")
  expect_output_types(ev, c("source", "error"))
  
  # error in geom
  ev <- evaluate_("
    ggplot2::ggplot(iris, ggplot2::aes(Species, Sepal.Length)) + ggplot2::geom_bar()
  ")
  expect_output_types(ev, c("source", "error"))
})

test_that("multirow graphics are captured only when complete", {
  ev <- evaluate_("
    par(mfrow = c(1, 2))
    plot(1)
    plot(2)
  ")
  expect_output_types(ev, c("source", "source", "source", "plot"))
})

test_that("multirow graphics are captured on close even if not complete", {
  ev <- evaluate_("
    par(mfrow = c(1, 2))
    plot(1)
  ")
  expect_output_types(ev, c("source", "source", "plot"))

  # Even if there's a comment at the end
  ev <- evaluate_("
    par(mfrow = c(1, 2))
    plot(1)
    # comment
  ")
  expect_output_types(ev, c("source", "source", "source", "plot"))
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

test_that("multiple plots are captured even if calls in DL are the same", {
  ev <- evaluate_('
    barplot(1)
    barplot(2); barplot(3)
  ')
  expect_output_types(ev, c("source", "plot", "source", "plot", "plot"))
})

test_that("strwidth()/strheight() should not produce new plots", {
  ev <- evaluate_("
    x <- strwidth('foo', 'inches')
    y <- strheight('foo', 'inches')
    plot(1)
  ")
  expect_output_types(ev, c("source", "source", "source", "plot"))
})

test_that("clip() does not produce new plots", {
  ev <- evaluate_("
    plot(1)
    clip(-1, 1, -1, 1)
    points(1, col = 'red')
  ")
  expect_output_types(ev, c("source", "plot", "source", "source", "plot"))
})

test_that("perspective plots are captured", {
  x <- seq(-10, 10, length.out = 30)
  y <- x
  ff <- function(x,y) { r <- sqrt(x^2 + y^2); 10 * sin(r) / r }
  z <- outer(x, y, ff)
  z[is.na(z)] <- 1

  ev <- evaluate_("
    for (i in 1:3) {
      persp(x, y, z, phi = 30 + i * 10, theta = 30)
    }
  ")
  expect_output_types(ev, c("source", "plot", "plot", "plot"))
})

# a bug report yihui/knitr#722
test_that("repeatedly drawing the same plot does not omit plots randomly", {
  expect_true(all(replicate(100, length(evaluate("plot(1:10)"))) == 2))
})

test_that("evaluate() doesn't depend on device option", {
  path <- withr::local_tempfile()
  # This would error if used because recording is not enable
  withr::local_options(device = function() png(path))
  
  ev <- evaluate("plot(1)")
  expect_output_types(ev, c("source", "plot"))
})

# https://github.com/yihui/knitr/issues/2297
test_that("existing plot doesn't leak into evaluate()", {
  pdf(NULL)
  plot.new()
  defer(dev.off())

  # errors because plot.new() called
  ev <- evaluate('lines(1)')
  expect_output_types(ev, c("source", "error"))
})

test_that("evaluate restores existing plot", {
  pdf(NULL)
  d <- dev.cur()
  defer(dev.off())

  ev <- evaluate('plot(1)')
  expect_output_types(ev, c("source", "plot"))
  expect_equal(dev.cur(), d)
})

test_that("evaluate ignores plots created in new device", {
  ev <- evaluate_("
    pdf(NULL)
    plot(1)
    invisible(dev.off())
    plot(1)
  ")
  expect_output_types(ev, c("source", "source", "source", "source", "plot"))
})

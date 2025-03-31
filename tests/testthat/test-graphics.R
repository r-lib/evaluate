test_that("single plot is captured", {
  ev <- evaluate("plot(1:10)")
  expect_output_types(ev, c("source", "plot"))
})

test_that("plot additions are captured", {
  ev <- evaluate(function() {
    plot(1:10)
    lines(1:10)
  })
  expect_output_types(ev, c("source", "plot", "source", "plot"))
})

test_that("blank plots created by plot.new() are preserved", {
  ev <- evaluate(function() {
    plot.new()
    plot(1:10)
    plot.new()
    plot(1:10)
    plot.new()
  })
  expect_output_types(ev, rep(c("source", "plot"), 5))
})

test_that("evaluate doesn't open plots or create files", {
  n <- length(dev.list())
  evaluate("plot(1)")

  expect_false(file.exists("Rplots.pdf"))
  expect_equal(length(dev.list()), n)
})

test_that("base plots in a single expression are captured", {
  ev <- evaluate(function() {
    {
      plot(rnorm(100))
      plot(rnorm(100))
      plot(rnorm(100))
    }
  })
  expect_output_types(ev, c("source", "plot", "plot", "plot"))
})

test_that("captures ggplots", {
  skip_if_not_installed("ggplot2")
  library(ggplot2)

  ev <- evaluate(
    "ggplot(mtcars, aes(mpg, wt)) + geom_point()"
  )
  expect_output_types(ev, c("source", "plot"))

  ev <- evaluate(function() {
    for (j in 1:2) {
      print(ggplot(mtcars, aes(mpg, wt)) + geom_point())
    }
  })
  expect_output_types(ev, c("source", "plot", "plot"))
})

test_that("erroring ggplots should not be recorded", {
  skip_if_not_installed("ggplot2")
  library(ggplot2)

  # error in aesthetics
  ev <- evaluate(function() {
    ggplot(iris, aes(XXXXXXXXXX, Sepal.Length)) + geom_boxplot()
  })
  expect_output_types(ev, c("source", "error"))

  # error in geom
  ev <- evaluate(function() {
    ggplot(iris, aes(Species, Sepal.Length)) + geom_bar()
  })
  expect_output_types(ev, c("source", "error"))
})

test_that("multirow graphics are captured only when complete", {
  ev <- evaluate(function() {
    par(mfrow = c(1, 2))
    plot(1)
    plot(2)
  })
  expect_output_types(ev, c("source", "source", "source", "plot"))
})

test_that("multirow graphics are captured on close even if not complete", {
  ev <- evaluate(function() {
    par(mfrow = c(1, 2))
    plot(1)
  })
  expect_output_types(ev, c("source", "source", "plot"))

  # Even if there's a comment at the end
  ev <- evaluate(function() {
    par(mfrow = c(1, 2))
    plot(1)
    # comment
  })
  expect_output_types(ev, c("source", "source", "source", "plot"))
})

test_that("plots are captured in a non-rectangular layout", {
  ev <- evaluate(function() {
    for (j in 1:3) {
      layout(matrix(c(1, 2, 1, 3, 4, 4), 3, 2, byrow = TRUE))
      plot(rnorm(10))
      plot(rnorm(10))
      plot(rnorm(10))
      plot(rnorm(10))
    }
  })
  expect_output_types(ev, c("source", "plot", "plot", "plot"))

  ev <- evaluate(function() {
    layout(matrix(c(1, 2, 1, 3, 4, 4), 3, 2, byrow = TRUE))
    # another expression before drawing the plots
    x <- 1 + 1
    for (j in 1:2) {
      plot(rnorm(10))
      plot(rnorm(10))
      plot(rnorm(10))
      plot(rnorm(10))
    }
  })
  expect_output_types(ev, rep(c("source", "plot"), c(4, 2)))
})

test_that("changes in parameters don't generate new plots", {
  ev <- evaluate(function() {
    plot(1)
    par(mar = rep(0, 4))
    plot(2)
  })
  expect_output_types(ev, c("source", "plot", "source", "source", "plot"))
})

test_that("multiple plots are captured even if calls in DL are the same", {
  ev <- evaluate(function() {
    barplot(1)
    barplot(2); barplot(3)
  })
  expect_output_types(ev, c("source", "plot", "source", "plot", "plot"))
})

test_that("strwidth()/strheight() should not produce new plots", {
  ev <- evaluate(function() {
    x <- strwidth("foo", "inches")
    y <- strheight("foo", "inches")
    plot(1)
  })
  expect_output_types(ev, c("source", "source", "source", "plot"))
})

test_that("clip() does not produce new plots", {
  ev <- evaluate(function() {
    plot(1)
    clip(-1, 1, -1, 1)
    points(1, col = "red")
  })
  expect_output_types(ev, c("source", "plot", "source", "source", "plot"))
})

test_that("perspective plots are captured", {
  x <- seq(-10, 10, length.out = 30)
  y <- x
  ff <- function(x, y) {
    r <- sqrt(x^2 + y^2)
    10 * sin(r) / r
  }
  z <- outer(x, y, ff)
  z[is.na(z)] <- 1

  ev <- evaluate(function() {
    for (i in 1:3) {
      persp(x, y, z, phi = 30 + i * 10, theta = 30)
    }
  })
  expect_output_types(ev, c("source", "plot", "plot", "plot"))
})

# a bug report yihui/knitr#722
test_that("plot state doesn't persist over evaluate calls", {
  expect_output_types(evaluate("plot(1)"), c("source", "plot"))
  expect_output_types(evaluate("plot(1)"), c("source", "plot"))
  expect_output_types(evaluate("plot(1)"), c("source", "plot"))
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
  ev <- evaluate("lines(1)")
  expect_output_types(ev, c("source", "error"))
})

test_that("evaluate restores existing plot", {
  pdf(NULL)
  d <- dev.cur()
  defer(dev.off())

  ev <- evaluate("plot(1)")
  expect_output_types(ev, c("source", "plot"))
  expect_equal(dev.cur(), d)
})

test_that("evaluate ignores plots created in new device", {
  ev <- evaluate(function() {
    pdf(NULL)
    plot(1)
    invisible(dev.off())
    plot(1)
  })
  expect_output_types(ev, c("source", "source", "source", "source", "plot"))
})


# trim_intermediate_plots ------------------------------------------------

test_that("can trim off intermediate plots", {
  ev <- evaluate(c(
    "plot(1:3)",
    "text(1, 1, 'x')",
    "text(1, 1, 'y')"
  ))
  ev <- trim_intermediate_plots(ev)
  expect_output_types(ev, c("source", "source", "source", "plot"))

  ev <- evaluate(c(
    "plot(1:3)",
    "text(1, 1, 'x')",
    "plot(1:3)",
    "text(1, 1, 'y')"
  ))
  ev <- trim_intermediate_plots(ev)
  expect_output_types(ev, c("source", "source", "plot", "source", "source", "plot"))
})

test_that("works with empty output", {
  ev <- trim_intermediate_plots(evaluate(""))
  expect_output_types(ev, "source")

  ev <- trim_intermediate_plots(new_evaluation(list()))
  expect_output_types(ev, character())
})

test_that("checks its input", {
  expect_snapshot(trim_intermediate_plots(1), error = TRUE)
})

# New graphics features
# https://github.com/r-lib/evaluate/issues/238
test_that("new graphics features", {
  # R 4.3.0 fixes segfault when using new features with `pdf(NULL)`
  skip_if_not(getRversion() >= "4.3.0")

  # Gradients/Patterns
  ev <- evaluate(c(
    "grid::grid.rect(gp = grid::gpar(fill = grid::linearGradient()))",
    "grid::grid.rect(gp = grid::gpar(fill = grid::radialGradient()))",
    "pat <- grid::pattern(grid::circleGrob())",
    "grid::grid.rect(gp = grid::gpar(fill = pat))"
  ))
  expect_output_types(ev, c("source", "plot", "source", "plot",
                            "source", "source", "plot"))

  # Clipping paths
  ev <- evaluate(c(
    'cg <- grid::circleGrob(r=.25, gp=grid::gpar(col="grey"))',
    'grid::pushViewport(grid::viewport(clip=cg))',
    'grid::grid.text("testing", gp=grid::gpar(cex=3))'
  ))
  expect_output_types(ev, c("source", "source", "plot", "source", "plot"))

  # Masks
  ev <- evaluate(c(
    'mask <- grid::as.mask(grid::circleGrob(gp = grid::gpar(fill = "grey50")),',
    '                      "luminance")',
    'grid::pushViewport(grid::viewport(mask = mask))',
    'grid::grid.rect(gp=grid::gpar(fill = "red"))'
  ))
  expect_output_types(ev, c("source", "source", "plot", "source", "plot"))

  # Affine Transformations
  ev <- evaluate(c(
    'grid::grid.define(grid::circleGrob(), name = "circle")',
    'grid::pushViewport(grid::viewport(height = 0.5))',
    'grid::grid.use("circle")'
  ))
  expect_output_types(ev, rep(c("source", "plot"), 3L))

  # Stroking and Filling Paths
  ev <- evaluate(c(
    'grid::grid.fill(grid::circleGrob())',
    'grid::grid.fillStroke(grid::circleGrob())',
    'grid::grid.stroke(grid::circleGrob())'
  ))
  expect_output_types(ev, rep(c("source", "plot"), 3L))

  # `pdf(NULL)` throws warning when using compositing operator feature
  skip_if_not_installed("ragg", "1.3.3.9000")

  # Compositing operators
  ev <- evaluate(c(
    "src <- grid::rectGrob(x = 2/3, y = 1/3, width = 0.5, height = 0.5,",
    "                      gp = grid::gpar(col = NA, fill = rgb(0, 0, .9)))",
    "dst <- grid::rectGrob(x = 1/3, y = 2/3, width = 0.5, height = 0.5,",
    "                      gp = grid::gpar(col = NA, fill = rgb(.7, 0, 0)))",
    'grid::grid.group(src, "over", dst)'
  ))
  expect_output_types(ev, c("source", "source", "source", "plot"))
})

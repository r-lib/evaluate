if (dev.interactive()) {
  context("Evaluation: graphics")

  test_that("single plot is captured", {
    ev <- evaluate(file("plot.r"))
    expect_that(length(ev), equals(2))

    classes <- sapply(ev, class)
    expect_that(classes, equals(c("source", "recordedplot")))
  })

  test_that("ggplot is captured", {
    if (require("ggplot2")) {
      ev <- evaluate(file("ggplot.r"))
      expect_that(length(ev), equals(3))

      classes <- sapply(ev, class)
      expect_that(classes, equals(c("source", "source", "recordedplot")))
    }
  })

  test_that("plot additions are captured", {
    ev <- evaluate(file("plot-additions.r"))
    expect_that(length(ev), equals(4))

    classes <- sapply(ev, class)
    expect_that(classes, 
      equals(c("source", "recordedplot", "source", "recordedplot")))
  })

  test_that("blank plots are ignored", {
    ev <- evaluate(file("plot-new.r"))
    expect_that(length(ev), equals(7))

    classes <- sapply(ev, class)
    expect_that(classes, 
      equals(c("source", "source", "recordedplot", 
               "source", "source", "recordedplot", "source")))
  })

  test_that("base plots in a single expression are captured", {
    ev <- evaluate(file("plot-loop.r"))
    expect_that(length(ev), equals(4))

    classes <- sapply(ev, class)
    expect_that(classes, 
      equals(c("source", rep("recordedplot", 3))))
  })

  test_that("ggplot2 plots in a single expression are captured", {
    if (require("ggplot2")) {
      ev <- evaluate(file("ggplot-loop.r"))
      expect_that(length(ev), equals(4))

      classes <- sapply(ev, class)
      expect_that(classes, 
        equals(c(rep("source", 2), rep("recordedplot", 2))))
    }
  })

  # test_that("no plot windows open", {
  #   graphics.off()
  #   expect_that(length(dev.list()), equals(0))
  #   evaluate(file("plot.r"))
  #   expect_that(length(dev.list()), equals(0))
  # })  
}

rnorm(10)
x <- list("I'm a list!")
suppressPackageStartupMessages(library(ggplot2))
ggplot(mtcars, aes(mpg, wt)) + geom_point()

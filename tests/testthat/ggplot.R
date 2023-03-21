suppressPackageStartupMessages(library(ggplot2))
ggplot(mtcars, aes(mpg, wt)) + geom_point()

suppressPackageStartupMessages(library(ggplot2))
for (j in 1:2) {
  # ggplot2 has been loaded previously
  print(ggplot(data.frame(x = rnorm(30), y = runif(30)), aes(x, y)) + geom_point())
}


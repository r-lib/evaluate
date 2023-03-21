suppressPackageStartupMessages(library(ggplot2))
ggplot(iris) +
  aes(x = Species, y = Sepal.Length) +
  geom_bar()

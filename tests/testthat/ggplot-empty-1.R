suppressPackageStartupMessages(library(ggplot2))
ggplot(iris) +
  aes(x = Speciess, y = Sepal.Length) +
  geom_boxplot()

library(testthat)
library(evaluate)

test_dir("testthat/", env = new.env(parent = getNamespace("evaluate")))

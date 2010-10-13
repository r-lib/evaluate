context("Parsing")

test_that("{ not removed", {
  
  f <- function() {
    for(i in 1:3){
      plot(rnorm(100))
      lines(rnorm(100))
    }
  }
  
  expect_that(nrow(parse_all(f)), equals(1))
  
})
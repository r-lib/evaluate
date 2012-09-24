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

test_that("double quotes in Chinese characters not destroyed", {
  loc <- Sys.getlocale("LC_ALL")
  if (.Platform$OS.type == "windows" && grepl("Chinese (Simplified)_People's Republic of China.936", loc, fixed = TRUE)) {
    expect_identical(parse_all(c('1+1', '"你好"'))[2, 1], '"你好"')
  }
})

test_that("can inject functons into evaluation context", {
  old <- inject_funs(f = function() 1)
  defer(inject_funs(old))

  ev <- evaluate("f()")
  expect_equal(ev[[2]], "[1] 1\n")
})

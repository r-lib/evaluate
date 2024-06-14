testthat::set_state_inspector(function() {
  list(dir = dir(test_path()), options = dev.list())
})

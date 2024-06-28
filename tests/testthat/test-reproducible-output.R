test_that("local_reproducible_output() respects local context", {

  local_reproducible_output(width = 105)
  expect_equal(getOption("width"), 105) 

  local({ 
    local_reproducible_output(width = 110)
    expect_equal(getOption("width"), 110)
  })

  expect_equal(getOption("width"), 105) 
})

test_that("local_envvar respects local context", {
  local_envvar(test = "a")
  expect_equal(Sys.getenv("test"), "a")

  local({
    local_envvar(test = "b")
    expect_equal(Sys.getenv("test"), "b")
  })

  expect_equal(Sys.getenv("test"), "a")
  local({
    local_envvar(test = NA)
    expect_equal(Sys.getenv("test"), "")
  })

  expect_equal(Sys.getenv("test"), "a")
})

test_that("local_collate respects local context", {
  if (Sys.info()[["sysname"]] == "Windows") {
    locale <- l10n_info()$codeset
  } else {
    locale <- "en_US"
  }
  
  local_collate("C")
  expect_equal(Sys.getlocale("LC_COLLATE"), "C")

  local({
    local_collate(locale)
    expect_equal(Sys.getlocale("LC_COLLATE"), locale)
  })

  expect_equal(Sys.getlocale("LC_COLLATE"), "C")
})

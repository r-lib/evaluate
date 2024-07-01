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
    locale <- switch(Sys.info()[["sysname"]],
      Darwin = ,
      Linux = "en_US.UTF-8",
      Windows = if (getRversion() >= "4.2") "en-US"
    )
    skip_if(is.null(locale), "Don't know good locale to use for this platform")
    
    local_collate("C")
    expect_equal(Sys.getlocale("LC_COLLATE"), "C")

    local({
      local_collate(locale)
      expect_equal(Sys.getlocale("LC_COLLATE"), locale)
    })

    expect_equal(Sys.getlocale("LC_COLLATE"), "C")
  })

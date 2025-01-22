test_that("all condition handlers first capture output", {
  test <- function() {
    plot(1, main = "one")
    message("this is an message!")
    plot(2, main = "two")
    warning("this is a warning")
    plot(3, main = "three")
    stop("this is an error")
  }
  expect_output_types(
    evaluate("test()"),
    c("source", "plot", "message", "plot", "warning", "plot", "error")
  )
})

test_that("conditions get calls stripped", {
  expect_equal(evaluate("warning('x')")[[2]]$call, NULL)
  expect_equal(evaluate("stop('x')")[[2]]$call, NULL)

  # including errors emitted by C
  expect_equal(evaluate("mpg")[[2]]$call, NULL)
  expect_equal(evaluate("3()")[[2]]$call, NULL)
})

test_that("envvar overrides keep_* arguments", {
  withr::local_envvar(R_EVALUATE_BYPASS_MESSAGES = "true")

  expect_message(ev <- evaluate("message('Hi!')", keep_message = FALSE), "Hi")
  expect_output_types(ev, "source")

  expect_warning(ev <- evaluate("warning('Hi!')", keep_warning = FALSE), "Hi")
  expect_output_types(ev, "source")
})

# messages --------------------------------------------------------------------

test_that("all three states of keep_message work as expected", {
  test <- function() {
    message("Hi!")
  }

  # message captured in output
  expect_no_message(ev <- evaluate("test()", keep_message = TRUE))
  expect_output_types(ev, c("source", "message"))

  # message propagated
  expect_message(ev <- evaluate("test()", keep_message = NA), "Hi")
  expect_output_types(ev, "source")

  # message ignored
  expect_no_message(ev <- evaluate("test()", keep_message = FALSE))
  expect_output_types(ev, "source")
})

# warnings --------------------------------------------------------------------

test_that("respects warn options", {
  # suppress warnings
  withr::local_options(warn = -1)
  ev <- evaluate("warning('hi')")
  expect_output_types(ev, "source")

  # delayed warnings are always immediate in knitr
  withr::local_options(warn = 0)
  ev <- evaluate("warning('hi')")
  expect_output_types(ev, c("source", "warning"))

  # immediate warnings
  withr::local_options(warn = 1)
  ev <- evaluate("warning('hi')")
  expect_output_types(ev, c("source", "warning"))

  # warnings become errors
  withr::local_options(warn = 2)
  ev <- evaluate("warning('hi')")
  expect_output_types(ev, c("source", "error"))
})

test_that("all three states of keep_warning work as expected", {
  test <- function() {
    warning("Hi!")
  }

  # warning captured in output
  expect_no_warning(ev <- evaluate("test()", keep_warning = TRUE))
  expect_output_types(ev, c("source", "warning"))

  # warning propagated
  expect_warning(ev <- evaluate("test()", keep_warning = NA), "Hi")
  expect_output_types(ev, "source")

  # warning ignored
  expect_no_warning(ev <- evaluate("test()", keep_warning = FALSE))
  expect_output_types(ev, "source")
})

test_that("log_warning causes warnings to be emitted", {
  f <- function() {
    warning("Hi!", immediate. = TRUE)
  }
  expect_snapshot(ev <- evaluate("f()", log_warning = TRUE))

  # And still recorded in eval result
  expect_output_types(ev, c("source", "warning"))
  expect_equal(ev[[1]]$src, "f()\n")
  expect_equal(ev[[2]], simpleWarning("Hi!", quote(f())))
})

# errors ----------------------------------------------------------------------

test_that("an error terminates evaluation of multi-expression input", {
  ev <- evaluate("stop('1');2\n3")
  expect_output_types(ev, c("source", "error", "source", "text"))
  expect_equal(ev[[1]]$src, "stop('1');2\n")

  ev <- evaluate("stop('1');2\n3", stop_on_error = 1L)
  expect_equal(ev[[1]]$src, "stop('1');2\n")
  expect_output_types(ev, c("source", "error"))
})

test_that("all three values of stop_on_error work as expected", {
  ev <- evaluate('stop("1")\n2', stop_on_error = 0L)
  expect_output_types(ev, c("source", "error", "source", "text"))

  ev <- evaluate('stop("1")\n2', stop_on_error = 1L)
  expect_output_types(ev, c("source", "error"))

  expect_snapshot(ev <- evaluate("stop(\"1\")\n2", stop_on_error = 2L), error = TRUE)
})

test_that("errors during printing are captured", {
  methods::setClass("A", contains = "function", where = environment())
  methods::setMethod("show", "A", function(object) stop("B"))
  a <- methods::new("A", function() b)

  ev <- evaluate("a")
  expect_output_types(ev, c("source", "error"))
})

test_that("Error can be entraced and correctly handled in outputs", {
  skip_if_not_installed("rlang")
  skip_if_not_installed("knitr")
  skip_if_not_installed("callr")
  skip_on_cran()
  # install dev version of package in temp directory
  withr::local_temp_libpaths()
  quick_install(pkgload::pkg_path("."), lib = .libPaths()[1])

  out <- withr::local_tempfile(fileext = ".txt")

  # Checking different way to entrace with evaluate
  ## No trace
  callr::rscript(test_path("ressources/with-stop-error-no-trace.R"), fail_on_status = FALSE, show = FALSE, stderr = out)
  expect_snapshot_file(out, name = 'stop-error-no-trace.txt')

  ## Using calling.handler in evaluate's output handler
  callr::rscript(test_path("ressources/with-stop-error-trace.R"), fail_on_status = FALSE, show = FALSE, stderr = out)
  expect_snapshot_file(out, name = 'stop-error-trace-calling-handler.txt')

  ## Using withCallingHandler()
  callr::rscript(test_path("ressources/with-stop-error-wch.R"), fail_on_status = FALSE, show = FALSE, stderr = out)
  expect_snapshot_file(out, name = 'stop-error-trace-wch.txt')

  ## Using abort() in evaluated code
  callr::rscript(test_path("ressources/with-abort-error.R"), fail_on_status = FALSE, show = FALSE, stderr = out)
  expect_snapshot_file(out, name = 'abort-error.txt')

  # setting option rlang_trace_top_env modified opt-out default evaluate trace trimming
  callr::rscript(test_path("ressources/with-stop-error-trace-trim.R"), fail_on_status = FALSE, show = FALSE, stderr = out)
  expect_snapshot_file(out, name = 'stop-error-trace-trim.txt',
                       transform = function(lines) gsub("\\s*at evaluate/R/.*\\.R(:\\d+)*", "", lines))

  # Checking error thrown when in rmarkdown and knitr context
  rscript <- withr::local_tempfile(fileext = ".R")
  out2 <- normalizePath(withr::local_tempfile(fileext = ".md"), winslash = "/", mustWork = FALSE)
  writeLines(c(
    "testthat::local_reproducible_output()",
    "options(knitr.chunk.error = FALSE)",
    sprintf('knitr::knit("%s", output = "%s")', test_path("ressources/with-stop-error-auto-entrace.Rmd"), out2)
    ), con = rscript)
  callr::rscript(rscript, fail_on_status = FALSE, show = FALSE, stderr = out)
  expect_snapshot_file(out, name = 'rmd-stop-error-auto-entrace.txt')

  writeLines(c(
      "testthat::local_reproducible_output()",
      "options(knitr.chunk.error = FALSE)",
      sprintf('res <- knitr::knit("%s", output = "%s")', test_path("ressources/with-abort-error.Rmd"), out2)
    ), con = rscript)
  callr::rscript(rscript, fail_on_status = FALSE, show = FALSE, stderr = out)
  expect_snapshot_file(out, name = 'rmd-abort-error.txt')

  # Checking error captured in cell output in rmarkdown and knitr context
  withr::with_options(list(options(knitr.chunk.error = TRUE)), {
    expect_snapshot_file(
      knitr::knit(test_path("ressources/with-stop-error-auto-entrace.Rmd"), output = out, quiet = TRUE),
      name = "rmd-stop-error.md"
    )
    expect_snapshot_file(
      knitr::knit(test_path("ressources/with-stop-error-sewed.Rmd"), output = out, quiet = TRUE),
      name = "rmd-stop-error-entrace-sewed.md"
    )
    expect_snapshot_file(
      knitr::knit(test_path("ressources/with-abort-error.Rmd"), output = out, quiet = TRUE),
      name = "rmd-abort-error.md"
    )
  })
})

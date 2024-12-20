expect_output_types <- function(x, types) {
  output_types <- vapply(x, output_type, character(1))
  expect_equal(output_types, types)
}

quick_install <- function(package, lib, quiet = TRUE) {
  opts <- c(
    "--data-compress=none",
    "--no-byte-compile",
    "--no-data",
    "--no-demo",
    "--no-docs",
    "--no-help",
    "--no-html",
    "--no-libs",
    "--use-vanilla",
    sprintf("--library=%s", lib),
    package
  )
  invisible(callr::rcmd("INSTALL", opts, show = !quiet, fail_on_status = TRUE))
}

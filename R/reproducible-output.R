#' Control common output options
#'
#' @description
#' Often when using `evaluate()` you are running R code with a specific output
#' context in mind. But there are many options and env vars that packages
#' will take from the current environment, meaning that output depends on
#' the current state in undesirable ways.
#'
#' This function allows you to describe the characteristics of the desired
#' output and takes care of setting the options and environment variables
#' for you.
#'
#' @export
#' @param width Value of the `"width"` option.
#' @param color Determines whether or not cli/crayon colour should be used.
#' @param unicode Should we use unicode characaters where possible?
#' @param hyperlinks Should we use ANSI hyperlinks?
#' @param rstudio Should we pretend that we're running inside of RStudio?
#' @param frame Scope of the changes; when this calling frame terminates the
#'   changes will be undone. For expert use only.
local_reproducible_output <- function(width = 80,
                                      color = FALSE,
                                      unicode = FALSE,
                                      hyperlinks = FALSE,
                                      rstudio = FALSE,
                                      frame = parent.frame()) {
  local_options(
    # crayon
    crayon.enabled = color,

    # cli
    cli.width = width,
    cli.condition_width = width,
    cli.num_colors = if (color) 8L else 1L,
    cli.hyperlink = hyperlinks,
    cli.hyperlink_run = hyperlinks,
    cli.hyperlink_help = hyperlinks,
    cli.hyperlink_vignette = hyperlinks,
    cli.unicode = unicode,
    cli.dynamic = FALSE,

    # base R
    width = width,
    useFancyQuotes = unicode,

    # rlang
    rlang_interactive = FALSE,
    .frame = frame
  )

  local_envvar(
    NO_COLOR = if (color) NA else 1,

    # Simulate RStudio
    RSTUDIO = if (rstudio) 1 else NA,
    RSTUDIO_SESSION_PID = if (rstudio) Sys.getpid() else NA,
    RSTUDIO_CHILD_PROCESS_PANE = if (rstudio) "build" else NA,
    RSTUDIO_CLI_HYPERLINKS = if (rstudio) 1 else NA,
    RSTUDIO_CONSOLE_WIDTH = width,
    .frame = frame
  )

  local_collate("C", frame = frame)

  invisible()
}

local_options <- function(..., .frame = parent.frame()) {
  old <- options(...)
  defer(options(old), .frame)

  invisible()
}

local_envvar <- function(..., .frame = parent.frame()) {
  old <- set_envvar(list(...))
  defer(set_envvar(old), .frame)

  invisible()
}

local_collate <- function(locale, frame = parent.frame()) {
  old <- Sys.getlocale("LC_COLLATE")
  defer(Sys.setlocale("LC_COLLATE", old), frame)
  Sys.setlocale("LC_COLLATE", locale)

  # From https://github.com/r-lib/withr/blob/v3.0.0/R/locale.R#L51-L55:
  # R supports setting LC_COLLATE to C via envvar. When that is the
  # case, it takes precedence over the currently set locale. We need
  # to set both the envvar and the locale for collate to fully take
  # effect.
  local_envvar(LC_COLLATE = locale, .frame = frame)

  invisible()
}

# adapted from withr:::set_envvar
set_envvar <- function(envs) {
  if (length(envs) == 0) {
    return()
  }

  old <- Sys.getenv(names(envs), names = TRUE, unset = NA)
  set <- !is.na(envs)

  if (any(set)) do.call("Sys.setenv", as.list(envs[set]))
  if (any(!set)) Sys.unsetenv(names(envs)[!set])

  invisible(old)
}

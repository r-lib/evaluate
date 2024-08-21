cat_line <- function(..., file = stdout()) {
  cat(paste0(..., "\n", collapse = ""), file = file)
}

indent <- function(x, by = "  ", drop_trailing_nl = TRUE) {
  if (drop_trailing_nl) {
    x <- gsub("\n$", "", x)
  }
  paste0(by, gsub("\n", paste0("\n", by), x))
}

defer <- function(expr, frame = parent.frame(), after = FALSE) {
  thunk <- as.call(list(function() expr))
  do.call(on.exit, list(thunk, TRUE, after), envir = frame)
}

`%||%` <- function(a, b) if (is.null(a)) b else a

env_var_is_true <- function(x) {
  isTRUE(as.logical(Sys.getenv(x, "false")))
}

is_call <- function(x, name) {
  if (!is.call(x)) {
    return(FALSE)
  }
  is.name(x[[1]]) && as.character(x[[1]]) %in% name
}

last <- function(x) x[length(x)]

seq2 <- function(start, end, by = 1) {
  if (start > end) {
    integer()
  } else {
    seq(start, end, by = 1)
  }
}

can_parse <- function(x) {
  if (!is.character(x)) {
    return(TRUE)
  }

  tryCatch(
    {
      parse(text = x)
      TRUE
    },
    error = function(e) FALSE
  )
}

deparse1 <- function(expr, collapse = " ", width.cutoff = 500L, ...) {
  paste(deparse(expr, width.cutoff, ...), collapse = collapse)
}

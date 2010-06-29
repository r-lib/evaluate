is.message <- function(x) inherits(x, "message")
is.warning <- function(x) inherits(x, "warning")
is.error <- function(x) inherits(x, "error")
is.value <- function(x) inherits(x, "value")
is.source <- function(x) inherits(x, "source")

new_value <- function(value, visible = FALSE) {
  structure(list(value = value, visible = visible), class = "value")
}

new_source <- function(src) {
  structure(list(src = src), class = "source")
}

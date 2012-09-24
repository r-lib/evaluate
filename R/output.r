#' Object class tests
#' @export is.message is.warning is.error is.value is.source is.recordedplot
#' @aliases is.message is.warning is.error is.value is.source is.recordedplot
#' @keywords internal
#' @rdname is.message
is.message <- function(x) inherits(x, "message")
#' @rdname is.message
is.warning <- function(x) inherits(x, "warning")
#' @rdname is.message
is.error <- function(x) inherits(x, "error")
#' @rdname is.message
is.value <- function(x) inherits(x, "value")
#' @rdname is.message
is.source <- function(x) inherits(x, "source")
#' @rdname is.message
is.recordedplot <- function(x) inherits(x, "recordedplot")

new_value <- function(value, visible = TRUE) {
  structure(list(value = value, visible = visible), class = "value")
}

new_source <- function(src) {
  structure(list(src = src), class = "source")
}

classes <- function(x) vapply(x, function(x) class(x)[1], character(1))

#' Object class tests
#'
#' @keywords internal
#' @rdname is.message
#' @export
is.message <- function(x) inherits(x, "message")
#' @rdname is.message
#' @export
is.warning <- function(x) inherits(x, "warning")
#' @rdname is.message
#' @export
is.error <- function(x) inherits(x, "error")
#' @rdname is.message
#' @export
is.value <- function(x) inherits(x, "value")
#' @rdname is.message
#' @export
is.source <- function(x) inherits(x, "source")
#' @rdname is.message
#' @export
is.recordedplot <- function(x) inherits(x, "recordedplot")

new_source <- function(src, call, handler = NULL) {
  src <- structure(list(src = src), class = "source")
  if (is.null(handler)) {
    return(src)
  }
  
  n_args <- length(formals(handler))
  if (n_args == 1) {
    # Old format only called for side effects
    handler(src)
    src
  } else if (n_args == 2) {
    # New format can influence result
    handler(src, call)
  } else {
    stop("Source output handler must have one or two arguments")
  }
}

# If the output handler has two arguments, then the user has opted into
# handling the value regardless of whether it's not visible.
show_value <- function(handler, visible) {
  visible || length(formals(handler$value)) > 1
}

handle_value <- function(handler, value, visible) {
  n_args <- length(formals(handler$value))
  if (n_args == 1) {
    handler$value(value)
  } else if (n_args == 2) {
    handler$value(value, visible)
  } else {
    stop("Value output handler must have one or two arguments")
  }
}

render <- function(x) if (isS4(x)) methods::show(x) else print(x)

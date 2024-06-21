new_evaluation <- function(x) {
  # Needs explicit list for backwards compatibility
  structure(x, class = c("evaluate_evaluation", "list"))
}

#' @export
print.evaluate_evaluation <- function(x, ...) {
  cat_line("<evaluation>")
  for (component in x) {
    type <- output_type(component)
    if (type == "source") {
      cat_line("Source code: ")
      cat_line(indent(component$src))
    } else if (type == "text") {
      cat_line("Text output: ")
      cat_line(indent(component))
    } else if (type %in% c("message", "warning", "error")) {
      cat_line("Condition: ")
      cat_line(indent(format_condition(component)))
    } else if (type == "plot") {
      dl <- component[[1]]
      cat_line("Plot [", length(dl), "]:")
      for (call in dl) {
        fun_call <- call[[2]][[1]]
        if (hasName(fun_call, "name")) {
          cat_line("  <base> ", fun_call$name, "()")
        } else {
          cat_line("  <grid> ", deparse(fun_call))
        }
      }
    } else {
      cat_line("Other: ")
      cat(" "); str(component, indent.str = "  ")
    }
  }

  invisible(x)
}

output_type <- function(x) {
  if (is.character(x)) {
    "text"
  } else if (is.error(x)) {
    "error"
  } else if (is.warning(x)) {
    "warning"
  } else if (is.message(x)) {
    "message"
  } else if (is.recordedplot(x)) {
    "plot"
  } else if (is.source(x)) {
    "source"
  } else {
    class(x)[[1]]
  }
}

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

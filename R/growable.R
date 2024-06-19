growable <- function(handler) {
  force(handler)
  
  out <- list()
  i <- 1
  has_error <- FALSE

  list(
    add_source = function(src, call) {
      src <- new_source(src, call, handler$source)
      if (is.null(src)) {
        return()
      }
      out[[i]] <<- src
      i <<- i + 1
      invisible()
    },

    add_output = function(value) {
      if (is.null(value)) {
        return(invisible())
      }
      
      out[[i]] <<- value
      i <<- i + 1
      switch(output_type(value),
        error = {has_error <<- TRUE; handler$error(value)},
        warning = handler$warning(value),
        message = handler$message(value),
        plot = handler$graphics(value),
        text = handler$text(value)
      ) 
      invisible
    },
    get = function() {
      new_evaluation(out)
    },
    has_errored = function() {
      has_error
    }
  )
}

output_type <- function(x) {
  if (is.character(x)) {
    "text"
  } else if (inherits(x, "error")) {
    "error"
  } else if (inherits(x, "warning")) {
    "warning"
  } else if (inherits(x, "message")) {
    "message"
  } else if (inherits(x, "recordedplot")) {
    "plot"
  } else if (inherits(x, "source")) {
    "source"
  } else {
    class(x)[[1]]
  }
}


new_evaluation <- function(x) {
  # Needs explicit list for backwards compatibility
  structure(x, class = c("evaluate_evaluation", "list"))
}

#' @export
print.evaluate_evaluation <- function(x, ...) {
  cat_line("<evaluation>")
  for (component in x) {
    if (inherits(component, "source")) {
      cat_line("Source code: ")
      cat_line(indent(component$src))
    } else if (is.character(component)) {
      cat_line("Text output: ")
      cat_line(indent(component))
    } else if (inherits(component, "condition")) {
      cat_line("Condition: ")
      cat_line(indent(format_condition(component)))
    } else if (inherits(component, "recordedplot")) {
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

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

handle_value <- function(handler, value, visible, envir = parent.frame()) {
  n_args <- length(formals(handler$value))
  if (n_args == 1) {
    handler$value(value)
  } else if (n_args == 2) {
    handler$value(value, visible)
  } else if (n_args == 3) {
    handler$value(value, visible, envir)
  } else {
    stop("Value output handler must have one or two arguments")
  }
}

render <- function(value, visible, envir) {
  if (!visible) {
    return(invisible())
  }

  if (isS4(value)) {
    methods::show(value)
  } else {
    # We need to evaluate the print() generic in a child environment of the
    # evaluation frame in order to find any methods registered there
    print_env <- new.env(parent = envir)
    print_env$value <- value
    evalq(print(value), envir = print_env)
  }
}

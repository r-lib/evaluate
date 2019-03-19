#' Set hooks.
#'
#' This wraps the base [setHook()] function to provide a return
#' value that makes it easy to undo.
#'
#' @param hooks a named list of hooks - each hook can either be a function or
#'   a list of functions.
#' @param action `"replace"`, `"append"` or `"prepend"`
#' @keywords internal
#' @export
#' @examples
#' new <- list(before.plot.new = function() print("Plotted!"))
#' hooks <- set_hooks(new)
#' plot(1)
#' set_hooks(hooks, "replace")
#' plot(1)
set_hooks <- function(hooks, action = "append") {
  stopifnot(is.list(hooks))
  stopifnot(!is.null(names(hooks)) && all(names(hooks) != ""))

  old <- list()
  for (hook_name in names(hooks)) {
    old[[hook_name]] <- getHook(hook_name)
    setHook(hook_name, hooks[[hook_name]], action = action)
  }

  invisible(old)
}

#' Remove hooks.
#'
#' This provides a way to remove previously set hook values.
#'
#' @inheritParams set_hooks
#' @keywords internal
#' @export
#' @examples
#' new1 <- list(before.plot.new = function() print("Plotted!"))
#' new2 <- list(before.plot.new = function() print("Plotted Again!"))
#' set_hooks(new1)
#' set_hooks(new2)
#' plot(1)
#' remove_hooks(new1)
#' plot(1)
#' remove_hooks(new2)
#' plot(1)
remove_hooks <- function(hooks) {
  stopifnot(is.list(hooks))
  stopifnot(!is.null(names(hooks)) && all(names(hooks) != ""))

  for (hook_name in names(hooks)) {
    hook <- getHook(hook_name)
    for (fun in unlist(hooks[hook_name])) {
      hook[sapply(hook, identical, fun)] <- NULL
    }
    setHook(hook_name, hook, "replace")
  }
}


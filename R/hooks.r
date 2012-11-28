#' Set hooks.
#'
#' This wraps the base \code{\link{setHook}} function to provide a return
#' value that makes it easy to undo.
#'
#' @param hooks a named list of hooks - each hook can either be a function or
#'   a list of functions.
#' @param action \code{"replace"}, \code{"append"} or \code{"prepend"}
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

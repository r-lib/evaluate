new_result <- function(value = NULL, visible = FALSE, output = NULL, src = NULL, graphics = NULL) {
  structure(list(value = value, visible = visible, output = output, src = src,
    graphics = graphics), class = "eval-result")
}
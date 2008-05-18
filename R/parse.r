# Outstanding bugs:
#   * a;b;c printing output
# 

nice_parse <- function(string, local=FALSE) {
  envir <- if (local) parent.frame() else .GlobalEnv

  parsed <- parse_text(string)

  parsed_obj <- lapply(1:nrow(parsed), function(i) {
    expr <- if (parsed[i, "type"] == "expr") parsed[i, "expr"] else NULL
    obj <- c(list(y1=parsed[i, "y1"], expr=expr, src=parsed[i, "src"]), if (!is.null(expr)) eval.with.details(expr, envir))
    class(obj) <- "expr-eval"
    obj
  })

  trailingnl <- grep("\n$", sapply(parsed_obj, "[[", "src"))

  parsed_obj[trailingnl] <- lapply(parsed_obj[trailingnl], function(x) {
    replace(x, "src", gsub("\n$", "", x$src))
  })
  
  new <- intersect(c(1, trailingnl + 1), 1:length(parsed_obj))
  parsed_obj[new] <- lapply(parsed_obj[new], function(x) {
    replace(x, "src", paste("\n", x$src, sep=""))
  })

  parsed_obj
}

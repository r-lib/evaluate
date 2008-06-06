# Outstanding bugs:
#   * a;b;c printing output
# 

nice_parse <- function(string, local=FALSE) {
  envir <- if (local) parent.frame() else .GlobalEnv

  parsed <- parse_text(string)

  parsed_obj <- lapply(1:nrow(parsed), function(i) {
    expr <- if (parsed[i, "type"] == "expr") parsed[i, "expr"] else NULL
    obj <- c(
      list(y1 = parsed[i, "y1"], expr = expr, src = parsed[i, "src"]), 
      if (!is.null(expr)) eval.with.details(expr, envir)
    )
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

parse_text <- function(string) {
  expr <- parse(text=string)
  srcref <- attr(expr, "srcref")
  srcfile <- attr(srcref[[1]], "srcfile")

  get_region <- function(x1, x2, y1, y2) {
    data.frame(
      x1, x2, y1, y2, 
      src = getSrcRegion(srcfile, x1, x2, y1, y2), 
      expr=NA, type="text", stringsAsFactors=FALSE
    )
  }

  # Create data frame containing each expression and its 
  # location in the original source
  src <- sapply(srcref, function(src) paste(as.character(src), collapse="\n"))
  pos <- t(sapply(srcref, unclass))
  colnames(pos) <- c("x1", "y1", "x2", "y2")
  pos <- as.data.frame(pos)[c("x1","x2","y1","y2")]

  parsed <- data.frame(pos, src=src, expr=I(expr), type="expr", stringsAsFactors=FALSE)

  # Extract unparsed text, in the same format as above
  breaks <- data.frame(
    x1 = parsed[, "x2"],
    x2 = c(parsed[-1, "x1"], 1e6),
    y1 = parsed[, "y2"] + 1,
    y2 = c(parsed[-1, "y1"] - 1, 1e6)
  )
  unparsed <- do.call("rbind", apply(breaks, 1, function(row) do.call("get_region", as.list(row))))

  all <- rbind(parsed, unparsed)
  
  all[do.call("order", all[,c("x1","x2","y1","y2")]), ]
}

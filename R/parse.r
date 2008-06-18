parse_all <- function(x) UseMethod("parse_all")

# Parses a string, returning everything
# Contrast to \code{\link{parse}} which only returns expressions
parse_all.character <- function(x) {
  string <- paste(x, collapse = "\n")
  
  expr <- parse(text=string)
  srcref <- attr(expr, "srcref")
  srcfile <- attr(srcref[[1]], "srcfile")

  # Create data frame containing each expression and its 
  # location in the original source
  src <- sapply(srcref, function(src) paste(as.character(src), collapse="\n"))
  pos <- t(sapply(srcref, unclass))
  colnames(pos) <- c("x1", "y1", "x2", "y2")
  pos <- as.data.frame(pos)[c("x1","x2","y1","y2")]

  parsed <- data.frame(
    pos, src=src, expr=I(expr), text = FALSE, 
    stringsAsFactors = FALSE
  )

  # Extract unparsed text ----------------------------------------------------
  # Unparsed text includes:
  #  * text before first expression
  #  * text between expressions
  #  * text after last expression
  # 
  # Unparsed text does not contain any expressions, so can
  # be split into individual lines
  # TODO: split each unparsed region into individual lines

  get_region <- function(x1, x2, y1, y2) {
    data.frame(
      x1, x2, y1, y2, 
      src = getSrcRegion(srcfile, x1, x2, y1, y2), 
      expr = I(list(NULL)), stringsAsFactors=FALSE
    )
  }
  breaks <- data.frame(
    x1 = c(0, parsed[, "x2"]),
    x2 = c(parsed[1, "x1"] - 1, parsed[-1, "x1"], Inf),
    y1 = c(0, parsed[, "y2"] + 1),
    y2 = c(parsed[, "y1"] - 1, Inf)
  )
  unparsed <- do.call("rbind", 
    apply(breaks, 1, function(row) do.call("get_region", as.list(row)))
  )
  unparsed <- subset(unparsed, src != "")

  if (nrow(unparsed) > 0) {    
    unparsed$text <- TRUE
    all <- rbind(parsed, unparsed)
  } else {
    all <- parsed
  }

  all <- all[do.call("order", all[,c("x1","x2","y1","y2")]), ]
  rownames(all) <- NULL
  
  # Join lines ---------------------------------------------------------------
  # TODO:
  #  * join multiple expressions on single line: a; b; c
  #  * expression + comment: a # comment

  pos <- which(all$text)
  pos <- pos[pos != 1]
  
  if (length(pos) > 0) {
    all[pos - 1, "src"] <- paste(all[pos - 1, "src"], all[pos, "src"], sep ="")
    all[pos - 1, c("x2", "y2")] <- all[pos, c("x2", "y2")]
    all <- all[-pos, ]  
  }
  
  
  all$text <- NULL
  all$cr <- FALSE
  all$cr[grep("\n$", all$src)] <- TRUE
  
  all  
}


parse_all.connection <- function(x) {
  if (!isOpen(x, "r")) {
      open(x, "r")
      on.exit(close(x))
  }
  parse_all(readLines(x))
}
parse_all.function <- function(x) {
  src <- attr(x, "source")
  src <- gsub("^function\\(\\)\\s*\\{", "", src)
  src <- gsub("\\}$", "", src)
  parse_all(src)
}
parse_all.default <- function(x) {
  parse_all(deparse(x))
}
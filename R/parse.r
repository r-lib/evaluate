parse_all <- function(x) UseMethod("parse_all")

# Parses a string, returning everything
# Contrast to \code{\link{parse}} which only returns expressions
parse_all.character <- function(x) {
  string <- paste(x, collapse = "\n")
  
  expr <- parse(text = string)
  # No code, all comments
  if (length(expr) == 0) {
    lines <- strsplit(string, "\n")[[1]]
    n <- length(lines)
    return(data.frame(
      x1 = seq_along(lines), x2 = seq_along(lines), 
      y1 = rep(0, n), y2 = nchar(lines),
      src = lines, text = rep(TRUE, n),
      expr = I(rep(list(NULL), n)), visible = rep(FALSE, n), 
      stringsAsFactors = FALSE
    ))
  }
  
  srcref <- attr(expr, "srcref")
  srcfile <- attr(srcref[[1]], "srcfile")

  # Create data frame containing each expression and its 
  # location in the original source
  src <- sapply(srcref, function(src) paste(as.character(src), collapse="\n"))
  pos <- t(sapply(srcref, unclass))
  colnames(pos) <- c("x1", "y1", "x2", "y2")
  pos <- as.data.frame(pos)[c("x1","y1","x2","y2")]

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

  get_region <- function(x1, y1, x2, y2) {
    string <- getSrcRegion(srcfile, x1, x2, y1, y2)
    lines <- strsplit(string, "(?<=\n)", perl=TRUE)[[1]]
    n <- length(lines)
    if (n == 0) {
      lines <- ""
      n <- 1
    }
    
    data.frame(
      x1 = x1 + seq_len(n) - 1, y1 = c(y1, rep(1, n - 1)), 
      x2 = x1 + seq_len(n), y2 = rep(1, n), 
      src = lines, 
      expr = I(rep(list(NULL), n)),
      stringsAsFactors=FALSE
    )
  }
  breaks <- data.frame(
    x1 = c(1, parsed[, "x2"]),
    y1 = c(1, parsed[, "y2"] + 1),
    x2 = c(parsed[1, "x1"], parsed[-1, "x1"], Inf),
    y2 = c(parsed[, "y1"], Inf)
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
  all <- all[do.call("order", all[,c("x1","y1", "x2","y2")]), ]
  
  all$eol <- FALSE
  all$eol[grep("\n$", all$src)] <- TRUE
  all$block <- c(0, cumsum(all$eol)[-nrow(all)])
  
  # Join lines ---------------------------------------------------------------
  # Expressions need to be combined to create a complete line
  # Some expressions already span multiple lines, and these should be 
  # left alone
  
  lines <- split(all, all$block)
  join_pieces <- function(df) {
    n <- nrow(df)
    clean_expr <- compact(as.list(df$expr))
    if (length(clean_expr) == 0) {
      clean_expr <- list(NULL) 
    } else {
      clean_expr <- list(clean_expr)
    }
    
    with(df, data.frame(
      x1 = x1[1], x2 = x2[n],
      src = paste(src, collapse = ""),
      expr = I(clean_expr),
      stringsAsFactors = FALSE
    ))
  }
  combined <- do.call("rbind", lapply(lines, join_pieces))
  
  combined[order(combined$x1), ]
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
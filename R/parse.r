#' Parse, retaining comments.
#'
#' Works very similarly to parse, but also keeps original formatting and
#' comments.
#'
#' @param x object to parse.  Can be a string, a file connection, or a
#'   function
#' @return a data.frame with columns \code{src}, the source code, and
#'   \code{eval}
#' @export
parse_all <- function(x) UseMethod("parse_all")

#' @export
parse_all.character <- function(x) {
  x <- unlist(str_split(x, "\n"), recursive = FALSE, use.names = FALSE)
  src <- srcfilecopy("<text>", x)

  expr <- parse(text = x, srcfile = src)
  # No code, all comments
  if (length(expr) == 0) {
    n <- length(x)
    if (n > 1) x <- paste(x, rep(c("\n", ""), c(n - 1, 1)), sep = "")
    return(data.frame(
      x1 = seq_along(x), x2 = seq_along(x),
      y1 = rep(0, n), y2 = nchar(x),
      src = x, text = rep(TRUE, n),
      expr = I(rep(list(NULL), n)), visible = rep(FALSE, n),
      stringsAsFactors = FALSE
    ))
  }

  srcref <- attr(expr, "srcref")
  srcfile <- attr(srcref[[1]], "srcfile")

  # Create data frame containing each expression and its
  # location in the original source
  src <- sapply(srcref, function(src) str_c(as.character(src), collapse="\n"))
  pos <- t(sapply(srcref, unclass))[, 1:4, drop = FALSE]
  colnames(pos) <- c("x1", "y1", "x2", "y2")
  pos <- as.data.frame(pos)[c("x1","y1","x2","y2")]

  parsed <- data.frame(
    pos, src=src, expr=I(as.list(expr)), text = FALSE,
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

  # Join lines ---------------------------------------------------------------
  # Expressions need to be combined to create a complete line
  # Some expressions already span multiple lines, and these should be
  # left alone

  join_pieces <- function(df) {
    clean_expr <- Filter(Negate(is.null), as.list(df$expr))
    if (length(clean_expr) == 0) {
      clean_expr <- list(NULL)
    } else {
      clean_expr <- list(clean_expr)
    }

    with(df, data.frame(
      src = str_c(src, collapse = ""),
      expr = I(clean_expr),
      stringsAsFactors = FALSE
    ))
  }
  block <- c(0, cumsum(all$eol)[-nrow(all)])
  lines <- split(all, block)
  do.call("rbind", lapply(lines, join_pieces))
}

#' @export
parse_all.connection <- function(x) {
  if (!isOpen(x, "r")) {
      open(x, "r")
      on.exit(close(x))
  }
  text <- readLines(x)
  parse_all(text)
}

#' @export
parse_all.function <- function(x) {
  # FIXME: should use attr(x, 'srcref') now, and it is a little tricky to work
  # with one-liner functions, e.g. f = function(x) 1 + 1 (you cannot just remove
  # 1 and n from src)
  src <- attr(x, "source")
  # Remove first, function() {,  and last lines, }
  n <- length(src)
  parse_all(src[-c(1, n)])
}

#' @export
parse_all.default <- function(x) {
  parse_all(deparse(x))
}

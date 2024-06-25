#' Parse, retaining comments
#'
#' Works very similarly to parse, but also keeps original formatting and
#' comments.
#'
#' @param x object to parse.  Can be a string, a file connection, or a function.
#'   If a connection, will be opened and closed only if it was closed initially.
#' @param filename string overriding the file name
#' @param allow_error whether to allow syntax errors in `x`
#' @return 
#' A data frame with columns `src`, a character vector of source code, and 
#' `expr`, a list-column of parsed expressions. There will be one row for each 
#' top-level expression in `x`. A top-level expression is a complete expression 
#' which would trigger execution if typed at the console. 
#' 
#' The trailing `\n` at the end of each `src` is implicit.
#' 
#' The `expression` object in `expr` can be of any length: it will be 0 if 
#' the top-level expression contains only whitespace and/or comments; 1 if 
#' the top-level expression is a single scalar (like `TRUE`, `1`, or `"x"`), 
#' name, or call; or 2 if the top-level expression uses `;` to put multiple 
#' expressions on one line.
#' 
#' If there are syntax errors in `x` and `allow_error = TRUE`, the data 
#' frame will have an attribute `PARSE_ERROR` that stores the error object.
#' @export
#' @examples
#' source <- "
#'   # a comment
#'   x
#'   x;y
#' "
#' parsed <- parse_all(source)
#' lengths(parsed$expr)
#' str(parsed$expr)
#' 
parse_all <- function(x, filename = NULL, allow_error = FALSE) UseMethod("parse_all")

#' @export
parse_all.character <- function(x, filename = NULL, allow_error = FALSE) {
  if (any(grepl("\n", x))) {
    # Standardise to character vector with one line per element:
    # this is the input that parse() is documented to accept
    x <- unlist(strsplit(x, "\n"), recursive = FALSE, use.names = FALSE)
  }
  n <- length(x)

  filename <- filename %||% "<text>"
  src <- srcfilecopy(filename, x)
  if (allow_error) {
    exprs <- tryCatch(parse(text = x, srcfile = src), error = identity)
    if (inherits(exprs, 'error')) {
      return(structure(
        data.frame(
          src = paste(x, collapse = '\n'),
          expr = I(list(expression()))
        ),
        PARSE_ERROR = exprs
      ))
    }
  } else {
    exprs <- parse(text = x, srcfile = src)
  }

  # No code, only comments and/or empty lines
  ne <- length(exprs)
  if (ne == 0) {
    return(data.frame(src = x, expr = I(rep(list(expression()), n))))
  }

  srcref <- attr(exprs, "srcref", exact = TRUE)
  pos <- data.frame(
    start = vapply(srcref, `[[`, 7, FUN.VALUE = integer(1)),
    end = vapply(srcref, `[[`, 8, FUN.VALUE = integer(1))
  )
  pos$exprs <- exprs

  # parse() splits TLEs that use ; into multiple expressions so join back 
  # together if an expression overlaps on the same line.
  spl <- cumsum(c(TRUE, pos$start[-1] != pos$end[-ne]))
  tles <- lapply(split(pos, spl), function(p) {
    n <- nrow(p)
    data.frame(
      src = paste(x[p$start[1]:p$end[n]], collapse = "\n"),
      expr = I(list(p$exprs)),
      line = p$start[1]
    )
  })

  # parse() also drops comments and whitespace so we add them back in
  pos <- cbind(c(1, pos$end + 1), c(pos$start - 1, n))
  pos <- pos[pos[, 1] <= pos[, 2], , drop = FALSE]
  comments <- lapply(seq_len(nrow(pos)), function(i) {
    p <- pos[i, ]
    r <- p[1]:p[2]
    data.frame(
      src = x[r],
      expr = I(rep(list(expression()), p[2] - p[1] + 1)),
      line = r - 1
    )
  })

  res <- do.call(rbind, c(tles, comments))
  res <- res[order(res$line), ]
  res$line <- NULL
  rownames(res) <- NULL
  res
}

#' @export
parse_all.connection <- function(x, filename = NULL, ...) {
  if (!isOpen(x, "r")) {
      open(x, "r")
      on.exit(close(x))
  }
  text <- readLines(x)
  if (is.null(filename))
    filename <- summary(x)$description
  parse_all(text, filename, ...)
}

#' @export
parse_all.function <- function(x, filename = NULL, ...) {
  src <- attr(x, "srcref", exact = TRUE)
  if (is.null(src)) {
    src <- deparse(body(x))
    # Remove { and }
    n <- length(src)
    if (n >= 2) src <- src[-c(1, n)]
    if (is.null(filename))
      filename <- "<function>"
    parse_all(src, filename, ...)
  } else {
    src2 <- attr(body(x), "srcref", exact = TRUE)
    n <- length(src2)
    if (n > 0) {
      if (is.null(filename))
        filename <- attr(src, 'srcfile')$filename
      if (n >= 2) {
        parse_all(unlist(lapply(src2[-1], as.character)), filename, ...)
      } else  {
        # f <- function(...) {}
        parse_all(character(0), filename, ...)
      }
    } else {
      if (is.null(filename))
        filename <- "<function>"
      parse_all(deparse(body(x)), filename, ...)
    }
  }
}

#' @export
parse_all.default <- function(x, filename = NULL, ...) {
  if (is.null(filename))
    filename <- "<expression>"
  parse_all(deparse(x), filename, ...)
}

# Calls are already parsed and always length one
#' @export
parse_all.call <- function(x, filename = NULL, ...) {
  out <- parse_all.default(x, filename = filename, ...)
  out$expr <- list(as.expression(x))
  out
}

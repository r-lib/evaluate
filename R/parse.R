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
#' which would trigger execution if typed at the console. The `expression`
#' object in `expr` can be of any length: it will be 0 if the top-level 
#' expression contains only whitespace and/or comments; 1 if the top-level 
#' expression is a single scalar (like `TRUE`, `1`, or `"x"`), name, or call; 
#' or 2 if the top-level expression uses `;` to put multiple expressions on 
#' one line.
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
  if (length(grep("\n", x))) {
    # strsplit('a\n', '\n') needs to return c('a', '') instead of c('a')
    x <- gsub("\n$", "\n\n", x)
    x[x == ""] <- "\n"
    x <- unlist(strsplit(x, "\n"), recursive = FALSE, use.names = FALSE)
  }
  n <- length(x)

  if (is.null(filename))
    filename <- "<text>"
  src <- srcfilecopy(filename, x)
  if (allow_error) {
    exprs <- tryCatch(parse(text = x, srcfile = src), error = identity)
    if (inherits(exprs, 'error')) return(structure(
      data.frame(src = paste(x, collapse = '\n'), expr = I(list(expression()))),
      PARSE_ERROR = exprs
    ))
  } else {
    exprs <- parse(text = x, srcfile = src)
  }

  # No code, only comments and/or empty lines
  ne <- length(exprs)
  if (ne == 0) {
    return(data.frame(src = append_break(x), expr = I(rep(list(expression()), n))))
  }

  srcref <- attr(exprs, "srcref", exact = TRUE)

  # Stard/End line numbers of expressions
  pos <- do.call(rbind, lapply(srcref, unclass))[, c(7, 8), drop = FALSE]
  l1 <- pos[, 1]
  l2 <- pos[, 2]
  # Add a third column i to store the indices of expressions
  pos <- cbind(pos, i = seq_len(nrow(pos)))
  pos <- as.data.frame(pos)  # split() does not work on matrices

  # Split line number pairs into groups: if the next start line is the same as
  # the last end line, the two expressions must belong to the same group
  spl <- cumsum(c(TRUE, l1[-1] != l2[-ne]))
  # Extract src lines and expressions for each group; also record the start line
  # number of this group so we can re-order src/expr later
  res <- lapply(split(pos, spl), function(p) {
    n <- nrow(p)
    data.frame(
      src = paste(x[p[1, 1]:p[n, 2]], collapse = "\n"),
      expr = I(list(exprs[p[, 3]])),
      line = p[1, 1]
    )
  })

  # Now process empty expressions (comments/blank lines); see if there is a
  # "gap" between the last end number + 1 and the next start number - 1
  pos <- cbind(c(1, l2 + 1), c(l1 - 1, n))
  pos <- pos[pos[, 1] <= pos[, 2], , drop = FALSE]

  # Extract src lines from the gaps, and assign empty expressions to them
  res <- c(res, lapply(seq_len(nrow(pos)), function(i) {
    p <- pos[i, ]
    r <- p[1]:p[2]
    data.frame(
      src = x[r],
      expr = I(rep(list(expression()), p[2] - p[1] + 1)),
      line = r - 1
    )
  }))

  # Bind everything into a data frame, order it by line numbers, append \n to
  # all src lines except the last one, and remove the line numbers
  res <- do.call(rbind, res)
  res <- res[order(res$line), ]
  res$src <- append_break(res$src)
  res$line <- NULL

  # For compatibility with evaluate (<= 0.5.7): remove the last empty line (YX:
  # I think this is a bug)
  n <- nrow(res)
  if (res$src[n] == "") res <- res[-n, ]

  rownames(res) <- NULL
  res
}

# YX: It seems evaluate (<= 0.5.7) had difficulties with preserving line breaks,
# so it ended up with adding \n to the first n-1 lines, which does not seem to
# be necessary to me, and is actually buggy. I'm not sure if it is worth shaking
# the earth and work with authors of reverse dependencies to sort this out. Also
# see #42.
append_break <- function(x) {
  n <- length(x)
  if (n <= 1) x else paste(x, rep(c("\n", ""), c(n - 1, 1)), sep = "")
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
  filename <- filename %||% "<filename>"
  parse_all(find_function_body(x), filename = filename, ...)
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

find_function_body <- function(f) {
  if (is_call(body(f), "{")) {
    lines <- deparse(f, control = "useSource")
    expr <- parse(text = lines, keep.source = TRUE)
    
    data <- getParseData(expr)
    token_start <- which(data$token == "'{'")[[1]]
    token_end <- last(which(data$token == "'}'"))

    line_start <- data$line1[token_start] + 1
    line_end <- data$line2[token_end] - 1
    lines <- lines[seq2(line_start, line_end)]

    dedent <- min(data$col1[seq2(token_start + 1, token_end - 1)], 1e3) 
    substr(lines, dedent, nchar(lines))
  } else {
    deparse(body(f))
  }
}

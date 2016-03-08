#' Parse, retaining comments.
#'
#' Works very similarly to parse, but also keeps original formatting and
#' comments.
#'
#' @param x object to parse.  Can be a string, a file connection, or a function
#' @param filename string overriding the file name
#' @param allow_error whether to allow syntax errors in \code{x}
#' @return A data.frame with columns \code{src}, the source code, and
#'   \code{expr}. If there are syntax errors in \code{x} and \code{allow_error =
#'   TRUE}, the data frame has an attribute \code{PARSE_ERROR} that stores the
#'   error object.
#' @export
parse_all <- function(x, filename = NULL, allow_error = FALSE) UseMethod("parse_all")

#' @export
parse_all.character <- function(x, filename = NULL, allow_error = FALSE) {

  # Do not convert strings to factors by default in data.frame()
  op <- options(stringsAsFactors = FALSE)
  on.exit(options(op), add = TRUE)

  if (length(grep("\n", x)))
    x <- unlist(str_split(x, "\n"), recursive = FALSE, use.names = FALSE)
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
    return(data.frame(src = append_break(x), expr = I(rep(list(NULL), n))))
  }

  srcref <- attr(exprs, "srcref", exact = TRUE)

  # Stard/End line numbers of expressions
  pos <- do.call(rbind, lapply(srcref, unclass))[, c(1, 3), drop = FALSE]
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
      expr = I(rep(list(NULL), p[2] - p[1] + 1)),
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

# YX: This hack is because srcfilecopy() uses grepl("\n", fixed = TRUE), which
# does not work when the source lines contain multibyte characters that are not
# representable in the current locale on Windows (see
# https://bugs.r-project.org/bugzilla3/show_bug.cgi?id=16264). In our case, we
# have already split the lines by \n, so there is no need to do that again like
# srcfilecopy() does internally.
if (getRversion() <= '3.2.2') srcfilecopy <- function(filename, lines, ...) {
  src <- base::srcfilecopy(filename, lines = "", ...)
  src$lines <- lines
  src
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

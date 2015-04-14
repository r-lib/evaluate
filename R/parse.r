#' Parse, retaining comments.
#'
#' Works very similarly to parse, but also keeps original formatting and
#' comments.
#'
#' @param x object to parse.  Can be a string, a file connection, or a
#'   function
#' @return a data.frame with columns \code{src}, the source code, and
#'   \code{expr}
#' @export
parse_all <- function(x) UseMethod("parse_all")

#' @export
parse_all.character <- function(x) {

  # Do not convert strings to factors by default in data.frame()
  op <- options(stringsAsFactors = FALSE)
  on.exit(options(op), add = TRUE)

  if (length(grep("\n", x)))
    x <- unlist(str_split(x, "\n"), recursive = FALSE, use.names = FALSE)
  n <- length(x)
  src <- srcfilecopy("<text>", x)
  exprs <- parse(text = x, srcfile = src)

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
  src <- attr(x, "srcref", exact = TRUE)
  if (is.null(src)) {
    src <- deparse(body(x))
    # Remove { and }
    n <- length(src)
    if (n >= 2) src <- src[-c(1, n)]
    parse_all(src)
  } else {
    src2 <- attr(body(x), "srcref", exact = TRUE)
    n <- length(src2)
    if (n >= 2) {
      parse_all(unlist(lapply(src2[-1], as.character)))
    } else if (n == 1) {
      # f <- function(...) {}
      parse_all(character(0))
    } else if (n == 0) {
      parse_all(deparse(body(x)))
    }
  }
}

#' @export
parse_all.default <- function(x) {
  parse_all(deparse(x))
}

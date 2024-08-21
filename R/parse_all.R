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
#' A data frame two columns, `src` and `expr`, and one row for each complete
#' input in `x`. A complete input is R code that would trigger execution when
#' typed at the console. This might consist of multiple expressions separated
#' by `;` or one expression spread over multiple lines (like a function
#' definition).
#'
#' `src` is a character vector of source code. Each element represents a
#' complete input expression (which might span multiple line) and always has a
#' terminal `\n`.
#'
#' `expr` is a list-column of [expression]s. The expressions can be of any
#' length, depending on the structure of the complete input source:
#'
#' * If `src` consists of only only whitespace and/or comments, `expr` will
#'   be length 0.
#' * If `src` a single scalar (like `TRUE`, `1`, or `"x"`), name, or
#'   function call, `expr` will be length 1.
#' * If `src` contains multiple expressions separated by `;`, `expr` will
#'   have length two or more.
#'
#' The expressions have their srcrefs removed.
#'
#' If there are syntax errors in `x` and `allow_error = TRUE`, the data
#' frame will have an attribute `PARSE_ERROR` that stores the error object.
#' @export
#' @examples
#' # Each of these inputs are single line, but generate different numbers of
#' # expressions
#' source <- c(
#'   "# a comment",
#'   "x",
#'   "x;y",
#'   "x;y;z"
#' )
#' parsed <- parse_all(source)
#' lengths(parsed$expr)
#' str(parsed$expr)
#'
#' # Each of these inputs are a single expression, but span different numbers
#' # of lines
#' source <- c(
#'   "function() {}",
#'   "function() {",
#'   "  # Hello!",
#'   "}",
#'   "function() {",
#'   "  # Hello!",
#'   "  # Goodbye!",
#'   "}"
#' )
#' parsed <- parse_all(source)
#' lengths(parsed$expr)
#' parsed$src
parse_all <- function(x, filename = NULL, allow_error = FALSE) UseMethod("parse_all")

#' @export
parse_all.character <- function(x, filename = NULL, allow_error = FALSE) {
  if (any(grepl("\n", x))) {
    # Ensure that empty lines are not dropped by strsplit()
    x[x == ""] <- "\n"
    # Standardise to a character vector with one line per element;
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
        data.frame(src = paste(x, collapse = '\n'), expr = empty_expr()),
        PARSE_ERROR = exprs
      ))
    }
  } else {
    exprs <- parse(text = x, srcfile = src)
  }

  srcref <- attr(exprs, "srcref", exact = TRUE)
  pos <- data.frame(
    start = vapply(srcref, `[[`, 7, FUN.VALUE = integer(1)),
    end = vapply(srcref, `[[`, 8, FUN.VALUE = integer(1))
  )
  pos$exprs <- exprs

  # parse() splits TLEs that use ; into multiple expressions so we
  # join together expressions that overlaps on the same line(s)
  line_group <- cumsum(is_new_line(pos$start, pos$end))
  tles <- lapply(split(pos, line_group), function(p) {
    n <- nrow(p)
    data.frame(
      src = paste(x[p$start[1]:p$end[n]], collapse = "\n"),
      expr = I(list(p$exprs)),
      line = p$start[1]
    )
  })
  tles <- do.call(rbind, tles)

  # parse() drops comments and whitespace so we add them back in
  gaps <- data.frame(start = c(1, pos$end + 1), end = c(pos$start - 1, n))
  gaps <- gaps[gaps$start <= gaps$end, , ]
  # some indexing magic in order to vectorise the extraction
  lengths <- gaps$end - gaps$start + 1
  lines <- sequence(lengths) + rep(gaps$start, lengths) - 1

  comments <- data.frame(
    src = x[lines],
    expr = empty_expr(length(lines)),
    line = lines
  )

  res <- rbind(tles, comments)
  res <- res[order(res$line), c("src", "expr")]

  # Restore newlines stripped while converting to vector of lines
  if (length(res$src)) {
    res$src <- paste0(res$src, "\n")
  } else {
    res$src <- character()
  }

  res$expr <- lapply(res$expr, removeSource)

  rownames(res) <- NULL
  res
}

#' @export
parse_all.connection <- function(x, filename = NULL, ...) {
  if (!isOpen(x, "r")) {
    open(x, "r")
    defer(close(x))
  }
  text <- readLines(x)
  filename <- filename %||% summary(x)$description

  parse_all(text, filename, ...)
}

#' @export
parse_all.function <- function(x, filename = NULL, ...) {
  filename <- filename %||% "<filename>"
  parse_all(find_function_body(x), filename = filename, ...)
}

# Calls are already parsed and always length one
#' @export
parse_all.call <- function(x, filename = NULL, ...) {
  parse_all(deparse(x), filename = filename, ...)
}

# Helpers ---------------------------------------------------------------------

empty_expr <- function(n = 1) {
  I(rep(list(expression()), n))
}

is_new_line <- function(start, end) {
  if (length(start) == 0) {
    logical()
  } else if (length(start) == 1) {
    TRUE
  } else {
    c(TRUE, start[-1] != end[-length(end)])
  }
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

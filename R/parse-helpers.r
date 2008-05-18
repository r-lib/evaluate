# Capture.all function, which captures warnings and errors too
# Eval.with.vis becomes eval.with.details
# and send to fritz and duncan


# Extract the given region out of the srcfile
getSrcRegion <- function(srcfile, x1, x2, y1, y2) {
	lines <- getSrcLines(srcfile, x1, x2)

	text <- if (length(lines) == 1) {
		substr(lines[1], y1, y2)
	} else {
		c(
			substr(lines[1], y1, 1e6),
			lines[-c(1, length(lines))],
			substr(lines[length(lines)], 0, y2)
		)
	}
	paste(text, collapse="\n")
}


parse_text <- function(string) {
	expr <- parse(text=string)
	srcref <- attr(expr, "srcref")
	srcfile <- attr(srcref[[1]], "srcfile")

	get_region <- function(x1, x2, y1, y2) {
		data.frame(x1, x2, y1, y2, src = getSrcRegion(srcfile, x1, x2, y1, y2), expr=NA, type="text", stringsAsFactors=FALSE)
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




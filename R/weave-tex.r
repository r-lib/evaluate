# Escape latex special characters
# This function escapes special latex characters so they don't cause problems in your latex file
# 
# @arguments character string to escape
# @arguments if true, force latex newlines
# @keyword misc
# @seealso \url{http://ebooks.du.ac.in/latex/ltx-164.html}
escape_tex <- function(x, newlines = FALSE) {
	x <- gsub("\\\\", "$\\backslash$", x)
	x <- gsub("([#$%&_{}<>+])", "\\\\\\1", x)
	if (newlines) x <- gsub("\n", " \\\\\\\\ \n", x)
	x
}

code_tex <- function(string) {
  paste(
    "\\begin{alltt}\n",
    string,
    "\\end{alltt}\n",
    , sep = ""
  )
}

highlight_tex <- function(x) {
	ps(system("highlight -L --quiet --syntax r -f", intern=TRUE, input=x), collapse="\n")
}



# Include graphics in a latex file
# Given a list of files, this function prints the latex code necessary (ie. includegraphics) to include in the file.
# 
# Note: this function needs to be made generic so that
# it automatically uses the appropriate input text for the
# file type being written to.
# 
# @arguments path to graphics files
# @arguments latex scale option
# @arguments latex height option
# @arguments latex width option
# @keyword documentation 
image_tex <- function(paths, scale=NULL, width=NULL, height=NULL, breaks=TRUE, ...) {
	sep <- if (breaks) "\\\\\n" else "\n"
	inc <- function(file) {
		o <- NULL
		if (!is.null(scale)) o <- append(o, paste("scale=", scale, sep=""))
		if (!is.null(width)) o <- append(o, paste("width=", width, sep=""))
		if (!is.null(height)) o <- append(o, paste("height=", height, sep=""))
		opt <- paste("[", paste(o, collapse=","), "]", sep="")
		
		paste("\\includegraphics", opt, "{", strip_extension(file), "}", sep="")
	}
	paste(sapply(paths, inc), collapse=sep)
}


strip_extension <- function(x) {
  gsub("\\..*$", "", x)
}
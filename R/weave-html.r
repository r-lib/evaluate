# Escape html special characters
# This function escapes < and > so that they don't cause problems in your html file
# 
# @arguments character string to escape
# @arguments if true, make html newlines
# @keyword misc
escape_html <- function(x, newlines = FALSE) {
	x <- gsub(">", "&gt;", gsub("<", "&lt;", x))
	if (newlines) x <- gsub("\n", " <br />\n", x)
	x
}

highlight_html <- function(x) {
	ps(system("highlight --syntax r -f", intern=TRUE, input=x), collapse="\n")
}

code_tex <- function(string) {
  paste(
    "<pre>\n",
    string,
    "</pre>\n",
    , sep = ""
  )
}


# Include graphics for html
# Uses <img src="" /> to include an image into a html file
#
# @keyword internal
image_html <- function(paths, width=NULL, height=NULL, ...) {
	paste("<img src='", paths, "' />", sep="", collapse="\n")
}


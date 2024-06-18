evaluate_ <- function(text, ...) {
  # Trim off leading/trailing new lines and dedent
  text <- gsub("^\n {4}", "", text)
  text <- gsub("\n {4}", "\n", text)
  text <- gsub("\n +$", "", text)
  
  evaluate(text, ...)
}

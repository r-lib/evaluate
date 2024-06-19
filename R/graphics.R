looks_different <- function(old_dl, new_dl) {
  if (identical(old_dl, new_dl)) {
    return(FALSE)
  }

  # If the new plot has fewer calls, it must be a visual change
  if (length(new_dl) < length(old_dl)) {
    return(TRUE)
  }
  
  # If the initial calls are different, it must be a visual change
  if (!identical(old_dl[], new_dl[seq_along(old_dl)])) {
    return(TRUE)
  }

  # If the last calls involve visual changes then it's a visual change
  added_dl <- new_dl[-seq_along(old_dl)]
  makes_visual_change(added_dl)
}

makes_visual_change <- function(plot) {
  xs <- lapply(plot, function(x) x[[2]][[1]])

  for (x in xs) {
    if (hasName(x, "name")) { # base graphics
      if (!x$name %in% non_visual_calls) {
        return(TRUE)
      }
    } else if (is.call(x)) { # grid graphics
      if (as.character(x[[1]]) != "requireNamespace") {
        return(TRUE)
      }
    }
  }
  FALSE
}

non_visual_calls <- c(
  "C_clip", 
  "C_layout", 
  "C_par", 
  "C_plot_window", 
  "C_strHeight", "C_strWidth", 
  "palette", "palette2"
)

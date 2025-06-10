local_plot_hooks <- function(f, frame = parent.frame()) {
  hook_list <- list(
    persp = f,
    before.plot.new = f,
    before.grid.newpage = f
  )
  set_hooks(hook_list)
  defer(remove_hooks(hook_list), frame)
  invisible()
}

# visual changes ---------------------------------------------------------

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
    if (hasName(x, "name")) {
      # base graphics
      if (!x$name %in% non_visual_calls) {
        return(TRUE)
      }
    } else if (is.call(x)) {
      # grid graphics
      if (!"requireNamespace" %in% as.character(x[[1]])) {
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
  "C_strHeight",
  "C_strWidth",
  "palette",
  "palette2"
)

# plot trimming ----------------------------------------------------------

#' Trim away intermediate plots
#'
#' Trim off plots that are modified by subsequent lines to only show
#' the "final" plot.
#'
#' @param x An evaluation object produced by [evaluate()].
#' @return A modified evaluation object.
#' @export
#' @examples
#' ev <- evaluate(c(
#'   "plot(1:3)",
#'   "text(1, 1, 'x')",
#'   "text(1, 1, 'y')"
#' ))
#'
#' # All intermediate plots are captured
#' ev
#' # Only the final plot is shown
#' trim_intermediate_plots(ev)
trim_intermediate_plots <- function(x) {
  if (!is_evaluation(x)) {
    stop("`x` must be an evaluation object.")
  }

  is_plot <- vapply(x, is.recordedplot, logical(1))
  plot_idx <- which(is_plot)
  keep <- rep(TRUE, length(plot_idx))

  prev_plot <- NULL
  for (i in seq2(2, length(plot_idx))) {
    cur_plot_dl <- x[[plot_idx[i]]][[1]]
    prev_plot_dl <- x[[plot_idx[i - 1]]][[1]]

    if (prev_plot_dl %is_prefix_of% cur_plot_dl) {
      keep[i - 1] <- FALSE
    }
  }

  idx <- seq_along(x)
  idx <- setdiff(idx, plot_idx[!keep])
  x[idx]
}

`%is_prefix_of%` <- function(x, y) {
  if (length(x) > length(y)) {
    return(FALSE)
  }

  identical(x[], y[seq_along(x)])
}

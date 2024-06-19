#' Watch for changes in output, text and graphics
#'
#' @param handler An ouptut handler object.
#' @param frame When this frame terminates, the watcher will automatically close.` 
#' @return list containing four functions: `get_new`, `pause`,
#'  `unpause`, `close`.
#' @inheritParams evaluate
#' @keywords internal
watchout <- function(handler = new_output_handler(),
                     debug = FALSE,
                     frame = parent.frame()) {
  dev <- dev.cur()
  last_plot <- NULL

  con <- file("", "w+b")
  defer(frame = frame, {
    if (!test_con(con, isOpen)) {
      con_error('The connection has been closed')
    }
    sink()
    close(con)
  })
  sink(con, split = debug)

  # try() defaults to using stderr() so we need to explicitly override(#88)
  old <- options(try.outFile = con)
  defer(options(old), frame = frame)

  capture_plot <- function(incomplete = FALSE) {
    # if dev.cur() has changed, we should not record plots any more
    if (!identical(dev, dev.cur())) {
      return()
    }
    devs <- dev.list()
    # No graphics devices 
    if (is.null(devs)) {
      return()
    }
    # Current graphics device changed since evaluate started
    if (!identical(devs, .env$dev_list)) {
      return()
    }  

    new_plot <- plot_snapshot(last_plot, incomplete)
    if (!is.null(new_plot)) {
      last_plot <<- new_plot
      handler$graphics(new_plot)
    }
    new_plot
  }

  capture_output <- function() {
    out <- read_con(con)
    if (!is.null(out)) {
      handler$text(out)
    }
    out
  }
  
  list(
    capture_plot = capture_plot,
    capture_output = capture_output
  )
}

read_con <- function(con, buffer = 32 * 1024) {
  bytes <- raw()
  repeat {
    new <- readBin(con, "raw", n = buffer)
    if (length(new) == 0) break
    bytes <- c(bytes, new)
  }
  if (length(bytes) == 0) {
    NULL
  } else {
    rawToChar(bytes)
  }
}

test_con = function(con, test) {
  tryCatch(test(con), error = function(e) con_error(e$message))
}

con_error = function(x) stop(
  x, '... Please make sure not to call closeAllConnections().', call. = FALSE
)

plot_snapshot <- function(last_plot, incomplete = FALSE) {
  # current page is incomplete
  if (!par("page") && !incomplete) {
    return()
  }

  plot <- recordPlot()
  if (!makes_visual_change(plot[[1]])) {
    return()
  }

  if (!looks_different(last_plot[[1]], plot[[1]])) {
    return()
  }
  plot
}

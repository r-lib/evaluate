watchout <- function(handler = new_output_handler(),
                     debug = FALSE,
                     frame = parent.frame()) {
  last_plot <- NULL

  # record current devices
  devs <- dev.list()
  devn <- length(devs)
  dev <- dev.cur()

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
    # only record plots for our graphics device
    if (!identical(dev.cur(), dev)) {
      return()
    }
    # cur_devs <- dev.list()
    # # No graphics devices 
    # if (is.null(cur_devs)) {
    #   return()
    # }
    # # Current graphics device changed since evaluate started
    # if (!identical(cur_devs, devs)) {
    #   return()
    # }

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

    last_plot <<- plot
    handler$graphics(plot)
    plot
  }

  capture_output <- function() {
    out <- read_con(con)
    if (!is.null(out)) {
      handler$text(out)
    }
    out
  }

  check_devices <- function() {
    # if dev.off() was called, make sure to restore device to the one opened 
    # when watchout() was called
    if (length(dev.list()) < devn) {
      dev.set(dev)
    }
    devn <<- length(dev.list())
    invisible()
  }
  
  list(
    capture_plot = capture_plot,
    capture_output = capture_output,
    check_devices = check_devices
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

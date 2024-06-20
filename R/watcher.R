watchout <- function(handler = new_output_handler(),
                     new_device = TRUE,
                     debug = FALSE,
                     frame = parent.frame()) {
  last_plot <- NULL

  if (new_device) {
    # Ensure we have a graphics device available for recording, but choose
    # one that's available on all platforms and doesn't write to disk
    pdf(file = NULL)
    dev.control(displaylist = "enable")
    dev <- dev.cur()
    defer(dev.off(dev), frame)
  }

  # record current devices
  devs <- dev.list()
  devn <- length(devs)
  dev <- dev.cur()

  con <- file("", "w+b")
  defer(try(close(con)), frame)

  sink(con, split = debug)
  defer(suppressWarnings(sink()), frame)
  sinkn <- sink.number()

  # try() defaults to using stderr() so we need to explicitly override(#88)
  old <- options(try.outFile = con)
  defer(options(old), frame)

  capture_plot <- function(incomplete = FALSE) {
    # only record plots for our graphics device
    if (!identical(dev.cur(), dev)) {
      return()
    }

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

  check_connection <- function() {
    if (!is_open(con)) {
      stop("Evaluate connection has been closed; can't continue")
    }
    if (sink.number() < sinkn) {
      stop("sink() has been closed; can't continue")
    }
    invisible()
  }
  
  list(
    capture_plot = capture_plot,
    capture_output = capture_output,
    check_devices = check_devices,
    check_connection = check_connection
  )
}

read_con <- function(con, buffer = 32 * 1024) {
  if (!is_open(con)) {
    return(NULL)
  }

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

is_open <- function(con) {
  tryCatch(isOpen(con = con), error = function(e) FALSE)
}

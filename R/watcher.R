watchout <- function(output = growable(),
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
    output$add_output(plot)
    invisible()
  }

  capture_output <- function() {
    out <- read_con(con)
    output$add_output(out)
    invisible()
  }

  capture_plot_and_output <- function() {
    capture_plot()
    capture_output()
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

  local_output_handler(function() capture_output(), frame = frame)

  # Hooks to capture plot creation
  hook_list <- list(
    persp = capture_plot_and_output,
    before.plot.new = capture_plot_and_output,
    before.grid.newpage = capture_plot_and_output
  )
  set_hooks(hook_list)
  defer(remove_hooks(hook_list), frame = frame)
  
  list(
    capture_plot = capture_plot,
    capture_output = capture_output,
    capture_plot_and_output = capture_plot_and_output,
    check_devices = check_devices,

    add_source = output$add_source,
    add_output = output$add_output,
    has_errored = output$has_errored,
    get = output$get
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

watchout <- function(
  handler = new_output_handler(),
  new_device = TRUE,
  debug = FALSE,
  frame = parent.frame()
) {
  if (new_device) {
    # Ensure we have a graphics device available for recording, but choose
    # one that's available on all platforms and doesn't write to disk.
    if (has_ragg()) {
      ragg::agg_record()
    } else {
      pdf(file = NULL)
    }
    dev.control(displaylist = "enable")
    dev <- dev.cur()
    defer(dev.off(dev), frame)
  }

  # Maintain a list of outputs that we'll grow over time
  output <- list()
  i <- 1
  push <- function(value) {
    output[i] <<- list(value)
    i <<- i + 1

    switch(
      output_type(value),
      plot = handler$graphics(value),
      text = handler$text(value),
      message = handler$message(value),
      warning = handler$warning(value),
      error = handler$error(value)
    )

    invisible()
  }
  push_source <- function(src, tle) {
    source <- new_source(src, tle, handler$source)
    if (!is.null(source)) {
      push(source)
    }
  }

  # record current devices for plot handling
  last_plot <- NULL
  devn <- length(dev.list())
  dev <- dev.cur()

  sink_con <- local_persistent_sink_connection(debug, frame)

  capture_plot <- function(incomplete = FALSE) {
    # no plots open; par("page") will open a device
    if (is.null(dev.list())) {
      return()
    }

    # only record plots for our graphics device
    if (!identical(dev.cur(), dev)) {
      return()
    }

    # current page is incomplete
    if (!par("page") && !incomplete) {
      return()
    }

    plot <- recordPlot()

    # Detect visual change on the new plot
    if (!makes_visual_change(plot[[1]])) {
      return()
    }

    # Are recorded plots identical?
    if (identical(last_plot, plot)) {
      return()
    }

    # Compare the display lists for differences
    # when they are not identical
    old_dl <- last_plot[[1]]
    new_dl <- plot[[1]]
    if (!identical(old_dl, new_dl) && !looks_different(old_dl, new_dl)) {
      return()
    }

    last_plot <<- plot
    push(plot)
    invisible()
  }

  capture_output <- function() {
    out <- sink_con()
    if (!is.null(out)) {
      push(out)
    }
    invisible()
  }

  capture_plot_and_output <- function() {
    capture_plot()
    capture_output()
  }

  print_value <- function(value, visible, envir) {
    if (!show_value(handler, visible)) {
      return()
    }

    pv <- withVisible(handle_value(handler, value, visible, envir))
    capture_plot_and_output()
    # If the return value is visible, save the value to the output
    if (pv$visible) {
      push(pv$value)
    }
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

  local_console_flusher(capture_output, frame = frame)
  local_plot_hooks(capture_plot_and_output, frame = frame)

  list(
    capture_plot = capture_plot,
    capture_output = capture_output,
    capture_plot_and_output = capture_plot_and_output,
    check_devices = check_devices,
    push = push,
    push_source = push_source,
    print_value = print_value,
    get = function() new_evaluation(output)
  )
}

# Persistent way to capture output ---------------------------------------------

local_persistent_sink_connection <- function(
  debug = FALSE,
  frame = parent.frame()
) {
  con <- file("", "w+b")
  defer(if (isValid(con)) close(con), frame)

  # try() defaults to using stderr() so we need to explicitly override(#88)
  old <- options(try.outFile = con)
  defer(options(old), frame)

  sink(con, split = debug)
  sinkn <- sink.number()
  defer(if (sink.number() >= sinkn) sink(), frame)

  function() {
    if (!isValid(con)) {
      con <<- file("", "w+b")
      options(try.outFile = con)
    }

    if (sink.number() < sinkn) {
      sink(con)
      sinkn <<- sink.number()
    }

    read_con(con)
  }
}

read_con <- function(con, buffer = 32 * 1024) {
  bytes <- raw()
  repeat {
    new <- readBin(con, "raw", n = buffer)
    if (length(new) == 0) {
      break
    }
    bytes <- c(bytes, new)
  }
  if (length(bytes) == 0) {
    NULL
  } else {
    rawToChar(bytes)
  }
}

# isOpen doesn't work for two reasons:
# 1. It errors if con has been closed, rather than returning FALSE
# 2. If returns TRUE if con has been closed and a new connection opened
#
# So instead we retrieve the connection from its number and compare to the
# original connection. This works because connections have an undocumented
# external pointer.
isValid <- function(con) {
  tryCatch(
    identical(getConnection(con), con),
    error = function(cnd) FALSE
  )
}

has_ragg <- function() {
  requireNamespace("ragg", quietly = TRUE) &&
    exists("agg_record", getNamespace("ragg"))
}

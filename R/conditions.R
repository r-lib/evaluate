condition_handlers <- function(watcher, on_error, on_warning, on_message) {
  list(
    message = function(cnd) {
      watcher$capture_plot_and_output()

      if (on_message$capture) {
        watcher$push(cnd)
      }
      if (on_message$silence) {
        invokeRestart("muffleMessage")
      }
    },
    warning = function(cnd) {
      # do not handle warnings that shortly become errors or have been silenced
      if (getOption("warn") >= 2 || getOption("warn") < 0) {
        return()
      }

      watcher$capture_plot_and_output()
      if (on_warning$capture) {
        cnd <- sanitize_call(cnd)
        watcher$push(cnd)
      }
      if (on_warning$silence) {
        invokeRestart("muffleWarning")
      }
    },
    error = function(cnd) {
      watcher$capture_plot_and_output()

      cnd <- sanitize_call(cnd)
      watcher$push(cnd)

      switch(on_error,
        continue = invokeRestart("eval_continue"),
        stop = invokeRestart("eval_stop"),
        # No need to invoke a restart as we want the error to be thrown in this case.
        error = NULL
      )
    }
  )
}


with_handlers <- function(code, handlers) {
  if (!is.list(handlers)) {
    stop("`handlers` must be a list", call. = FALSE)
  }

  call <- as.call(c(quote(withCallingHandlers), quote(code), handlers))
  eval(call)
}

sanitize_call <- function(cnd) {
  if (identical(cnd$call, quote(eval(expr, envir)))) {
    cnd$call <- NULL
  }

  cnd
}

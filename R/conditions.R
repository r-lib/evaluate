condition_handlers <- function(watcher, output_handler, on_error, on_warning, on_message) {
  list(
    message = function(cnd) {
      watcher$capture_plot_and_output()
      
      if (on_message$capture) {
        watcher$push(cnd)
        output_handler$message(cnd)
      }
      if (on_message$silence) {
        invokeRestart("muffleMessage")
      }
    },
    warning =  function(cnd) {
      # do not handle warnings that shortly become errors
      if (getOption("warn") >= 2) return()
      # do not handle warnings that have been completely silenced
      if (getOption("warn") < 0) return()

      watcher$capture_plot_and_output()
      if (on_warning$capture) {
        cnd <- reset_call(cnd)
        watcher$push(cnd)
        output_handler$warning(cnd)
      }
      if (on_warning$silence) {
        invokeRestart("muffleWarning")
      }
    },
    error = function(cnd) {
      watcher$capture_plot_and_output()
      
      cnd <- reset_call(cnd)
      watcher$push(cnd)
      
      switch(on_error,
        continue = invokeRestart("eval_continue"),
        stop = invokeRestart("eval_stop"),
        error = invokeRestart("eval_error", cnd)
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

reset_call <- function(cnd) {
  if (identical(cnd$call, quote(eval(expr, envir)))) {
    cnd$call <- NULL
  }
  cnd
}

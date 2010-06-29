#' Get snapshot of current device
plot_snapshot <- local({ 
  last_plot <- NULL
  
  take_snapshot <- function() {
    structure(
      .Internal(getSnapshot()),
      version = grDevices:::rversion(),
      class = "recordedplot"
    )
  }
  
  function() {
    plot <- take_snapshot()
    if (identical(plot, last_plot)) return(NULL)
    
    last_plot <<- plot
    if (identical(plot, empty_plot)) return(NULL)
    plot
  }
})


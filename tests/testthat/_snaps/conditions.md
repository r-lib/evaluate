# log_warning causes warnings to be emitted

    Code
      ev <- evaluate("f()", log_warning = TRUE)
    Condition
      Warning in `f()`:
      Hi!

# all three starts of stop_on_error work as expected

    Code
      evaluate("stop(\"1\")\n2", stop_on_error = 2L)
    Condition
      Error:
      ! 1

# errors have useful call

    Code
      cnd$trace
    Output
           x
        1. +-evaluate (local) `<fn>`()
        2. | +-base::withRestarts(...) at evaluate/R/evaluate.R:144:7
        3. | | \-base (local) withRestartList(expr, restarts)
        4. | |   +-base (local) withOneRestart(withRestartList(expr, restarts[-nr]), restarts[[nr]])
        5. | |   | \-base (local) doWithOneRestart(return(expr), restart)
        6. | |   \-base (local) withRestartList(expr, restarts[-nr])
        7. | |     +-base (local) withOneRestart(withRestartList(expr, restarts[-nr]), restarts[[nr]])
        8. | |     | \-base (local) doWithOneRestart(return(expr), restart)
        9. | |     \-base (local) withRestartList(expr, restarts[-nr])
       10. | |       \-base (local) withOneRestart(expr, restarts[[1L]])
       11. | |         \-base (local) doWithOneRestart(return(expr), restart)
       12. | +-evaluate:::with_handlers(...) at evaluate/R/evaluate.R:144:7
       13. | | +-base::eval(call) at evaluate/R/conditions.R:50:3
       14. | | | \-base::eval(call)
       15. | | \-base::withCallingHandlers(...)
       16. | \-base::withVisible(do) at evaluate/R/evaluate.R:153:15
       17. \-evaluate (local) f() at evaluate/R/evaluate.R:153:15
       18.   \-evaluate (local) g() at test-conditions.R:132:8
       19.     \-evaluate (local) h() at test-conditions.R:133:8
       20.       \-rlang::abort("Error") at test-conditions.R:134:8


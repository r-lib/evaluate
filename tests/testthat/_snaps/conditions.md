# log_warning causes warnings to be emitted

    Code
      ev <- evaluate("f()", log_warning = TRUE)
    Condition
      Warning in `f()`:
      Hi!

# all three values of stop_on_error work as expected

    Code
      ev <- evaluate("stop(\"1\")\n2", stop_on_error = 2L)
    Condition
      Error:
      ! 1


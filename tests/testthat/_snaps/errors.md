# code errors if stop_on_error == 2L

    Code
      x <- evaluate("stop(\"1\")", stop_on_error = 2L)
    Condition
      Error:
      ! 1


# all three starts of stop_on_error work as expected

    Code
      evaluate("stop(\"1\")\n2", stop_on_error = 2L)
    Condition
      Error:
      ! 1


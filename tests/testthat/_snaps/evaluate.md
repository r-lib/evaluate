# check_stop_on_error converts integer to enum

    Code
      check_stop_on_error(4)
    Condition
      Error:
      ! `stop_on_error` must be 0, 1, or 2.

# check_keep errors with bad inputs

    Code
      check_keep(1, "keep_message")
    Condition
      Error:
      ! `keep_message` must be TRUE, FALSE, or NA.
    Code
      check_keep(c(TRUE, FALSE), "keep_message")
    Condition
      Error:
      ! `keep_message` must be TRUE, FALSE, or NA.


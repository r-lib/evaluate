# calling handlers are checked

    Code
      check_handlers(list(condition = 1))
    Condition
      Error in `new_output_handler()`:
      ! `calling_handlers` must be a named list of functions.
    Code
      check_handlers(list(function(...) NULL))
    Condition
      Error in `new_output_handler()`:
      ! `calling_handlers` must be a named list of functions.
    Code
      check_handlers(stats::setNames(list(function(...) NULL), NA))
    Condition
      Error in `new_output_handler()`:
      ! `calling_handlers` must be a named list of functions.
    Code
      check_handlers(stats::setNames(list(function(...) NULL), ""))
    Condition
      Error in `new_output_handler()`:
      ! `calling_handlers` must be a named list of functions.

# can conditionally omit output with output handler

    Code
      replay(out)
    Output
      > x
      [1] 1


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

# handles various numbers of arguments

    Code
      new_source("x", quote(x), f3)
    Condition
      Error in `new_source()`:
      ! Source output handler must have one or two arguments


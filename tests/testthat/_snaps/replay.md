# replay() should work when print() returns visible NULLs

    Code
      replay(ret)
    Output
      > structure(1, class = "FOO_BAR")
      NULL

# replay handles various output types

    Code
      replay(ev)
    Output
      > print("1")
      [1] "1"
      > message("2")
      2
      > warning("3")
      Warning:
      3
      > stop("4")
      Error:
      4

# replay handles rlang conditions

    Code
      replay(ev)
    Output
      > rlang::inform("2")
      2
      > rlang::warn("3")
      Warning:
      3
      > rlang::abort("4", call = NULL)
      Error:
      4

# format_condition handles different types of warning

    Code
      w1 <- simpleWarning("This is a warning")
      cat(format_condition(w1))
    Output
      Warning:
      This is a warning
    Code
      w2 <- simpleWarning("This is a warning", call = quote(f()))
      cat(format_condition(w2))
    Output
      Warning in f():
      This is a warning
    Code
      w3 <- rlang::warning_cnd(message = "This is a warning")
      cat(format_condition(w3))
    Output
      Warning:
      This is a warning
    Code
      w4 <- rlang::warning_cnd(message = "This is a warning")
      cat(format_condition(w4))
    Output
      Warning:
      This is a warning


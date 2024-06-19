# replay() should work when print() returns visible NULLs

    Code
      replay(ret)
    Output
      > structure(1, class = "FOO_BAR")

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
      <warning/rlang_warning>
      Warning:
      This is a warning
    Code
      w4 <- rlang::warning_cnd(message = "This is a warning")
      cat(format_condition(w4))
    Output
      <warning/rlang_warning>
      Warning:
      This is a warning


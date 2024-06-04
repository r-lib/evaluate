# show_warning handles different types of warning

    Code
      w1 <- simpleWarning("This is a warning")
      cat(format_warning(w1))
    Output
      Warning: This is a warning
    Code
      w2 <- simpleWarning("This is a warning", call = quote(f()))
      cat(format_warning(w2))
    Output
      Warning in f(): This is a warning
    Code
      w3 <- rlang::warning_cnd(message = "This is a warning")
      cat(format_warning(w3))
    Output
      <warning/rlang_warning>
      Warning:
      This is a warning
    Code
      w4 <- rlang::warning_cnd(message = "This is a warning")
      cat(format_warning(w4))
    Output
      <warning/rlang_warning>
      Warning:
      This is a warning

# can conditionally omit output with output handler

    Code
      replay(out)
    Output
      > x
      [1] 1


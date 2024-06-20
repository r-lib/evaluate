# can conditionally omit output with output handler

    Code
      replay(out)
    Output
      > x
      [1] 1

# has a reasonable print method

    Code
      evaluate("f()")
    Output
      <evaluation>
      Source code: 
        f()
      Text output: 
        [1] "1"
      Condition: 
        Message in message("2"):
        2
      Condition: 
        Warning in f():
        3
      Condition: 
        Error in f():
        4
    Code
      evaluate("plot(1:3)")
    Output
      <evaluation>
      Source code: 
        plot(1:3)
      Plot [8]:
        <base> C_plot_new()
        <base> palette2()
        <base> C_plot_window()
        <base> C_plotXY()
        <base> C_axis()
        <base> C_axis()
        <base> C_box()
        <base> C_title()


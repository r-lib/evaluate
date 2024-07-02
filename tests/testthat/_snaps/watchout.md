# evaluate recovers from closed sink

    Code
      ev <- evaluate("sink()\n1")

# evaluate recovers from closed connection

    Code
      ev <- evaluate("closeAllConnections()\n1")


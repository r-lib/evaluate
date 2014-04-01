context('Graphics')

test_that("Rplots.pdf files are not created", {
    op <- options(device = pdf)
    evaluate(file("plot.r"))
    options(op)
    expect_true(!file.exists("Rplots.pdf"))
})

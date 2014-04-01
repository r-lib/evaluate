context('Graphics')

test_that("Rplots.pdf files are not created", {
    op <- options(device = pdf)
    on.exit(options(op))
    evaluate(file("plot.r"))
    expect_false(file.exists("Rplots.pdf"))
})

## revdepcheck results

We checked 21 reverse dependencies, comparing R CMD check results across CRAN and dev versions of this package.

I also worked with Kurt to check all packages that use knitr, since evaluate powers knitr. Of the 221 packages I either couldn't check or failed their checks, 7 had failures on Kurt's check machine. I reported all problems upstream, providing patches where necessary. You can see a summary of my actions at https://github.com/r-lib/evaluate/issues/210#issuecomment-2339048094.

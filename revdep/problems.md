# knitr

<details>

* Version: 1.48
* GitHub: https://github.com/yihui/knitr
* Source code: https://github.com/cran/knitr
* Date/Publication: 2024-07-07 14:00:01 UTC
* Number of recursive dependencies: 85

Run `revdepcheck::cloud_details(, "knitr")` for more info

</details>

## Newly broken

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

## In both

*   checking tests ... ERROR
    ```
      Running ‘run-all.R’
    Running the tests in ‘tests/run-all.R’ failed.
    Complete output:
      > library(testit)
      > test_pkg("knitr")
      
      Error in `getMetricsFromLatex()`:
      ! 
      TeX was unable to calculate metrics for:
      
    ...
        6. knitr:::call_block(x)
           ...
       13. base::withRestarts(...)
       14. base (local) withRestartList(expr, restarts)
       15. base (local) withOneRestart(withRestartList(expr, restarts[-nr]), restarts[[nr]])
       16. base (local) docall(restart$handler, restartArgs)
       18. evaluate (local) fun(base::quote(`<smplErrr>`))
      
      Quitting from lines 4-5 [testfig] (knit-tikzDevice.Rnw)
      Execution halted
    ```

# multiverse

<details>

* Version: 0.6.1
* GitHub: https://github.com/MUCollective/multiverse
* Source code: https://github.com/cran/multiverse
* Date/Publication: 2022-07-04 13:20:02 UTC
* Number of recursive dependencies: 133

Run `revdepcheck::cloud_details(, "multiverse")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘branch.Rmd’ using rmarkdown
    --- finished re-building ‘branch.Rmd’
    
    --- re-building ‘conditions.Rmd’ using rmarkdown
    --- finished re-building ‘conditions.Rmd’
    
    --- re-building ‘durante-multiverse-analysis.Rmd’ using rmarkdown
    --- finished re-building ‘durante-multiverse-analysis.Rmd’
    
    ...
    --- finished re-building ‘multiverse-in-rmd.Rmd’
    
    --- re-building ‘visualising-multiverse.Rmd’ using rmarkdown
    --- finished re-building ‘visualising-multiverse.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘frequentist-multiverse-analysis.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘branch.Rmd’
      ...
    
    > M = multiverse()
    
    > M = multiverse()
    
    > execute_multiverse(M)
    
    ...
    Execution halted
    
      ‘branch.Rmd’ using ‘UTF-8’... failed
      ‘conditions.Rmd’ using ‘UTF-8’... OK
      ‘durante-multiverse-analysis.Rmd’ using ‘UTF-8’... OK
      ‘execution-multiverse.Rmd’ using ‘UTF-8’... OK
      ‘frequentist-multiverse-analysis.Rmd’ using ‘UTF-8’... failed
      ‘hurricane.Rmd’ using ‘UTF-8’... OK
      ‘multiverse-in-rmd.Rmd’ using ‘UTF-8’... OK
      ‘visualising-multiverse.Rmd’ using ‘UTF-8’... OK
    ```


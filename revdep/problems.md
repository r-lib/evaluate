# babelmixr2

<details>

* Version: 0.1.2
* GitHub: https://github.com/nlmixr2/babelmixr2
* Source code: https://github.com/cran/babelmixr2
* Date/Publication: 2023-12-12 21:20:10 UTC
* Number of recursive dependencies: 173

Run `revdepcheck::cloud_details(, "babelmixr2")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘new-estimation.Rmd’ using rmarkdown
    --- finished re-building ‘new-estimation.Rmd’
    
    --- re-building ‘running-pknca.Rmd’ using rmarkdown
    
    Quitting from lines 72-79 [model-update] (running-pknca.Rmd)
    Error: processing vignette 'running-pknca.Rmd' failed with diagnostics:
    <text>:1:1: unexpected '<'
    1: <
        ^
    --- failed re-building ‘running-pknca.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘running-pknca.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘lixoftConnectors’
    ```

# BeeGUTS

<details>

* Version: 1.1.3
* GitHub: https://github.com/bgoussen/BeeGUTS
* Source code: https://github.com/cran/BeeGUTS
* Date/Publication: 2023-09-18 15:40:02 UTC
* Number of recursive dependencies: 86

Run `revdepcheck::cloud_details(, "BeeGUTS")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Tutorial.Rmd’ using rmarkdown
    
    Quitting from lines 45-58 [example] (Tutorial.Rmd)
    Error: processing vignette 'Tutorial.Rmd' failed with diagnostics:
    Stan model 'GUTS_SD' does not contain samples.
    
    --- failed re-building ‘Tutorial.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Tutorial.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 78.9Mb
      sub-directories of 1Mb or more:
        data   4.0Mb
        libs  74.3Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# coro

<details>

* Version: 1.0.4
* GitHub: https://github.com/r-lib/coro
* Source code: https://github.com/cran/coro
* Date/Publication: 2024-03-11 11:40:02 UTC
* Number of recursive dependencies: 57

Run `revdepcheck::cloud_details(, "coro")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(coro)
      > 
      > test_check("coro")
      [ FAIL 3 | WARN 0 | SKIP 5 | PASS 202 ]
      
      ══ Skipped tests (5) ═══════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. └─coro:::expect_snapshot0(...) at test-parser-if.R:30:3
       2.   ├─rlang::inject(expect_snapshot(!!enquo0(expr), cran = cran)) at tests/testthat/helper-flowery.R:5:5
       3.   └─testthat::expect_snapshot(...)
       4.     └─rlang::cnd_signal(state$error)
      
      [ FAIL 3 | WARN 0 | SKIP 5 | PASS 202 ]
      Error: Test failures
      Execution halted
    ```

# etwfe

<details>

* Version: 0.4.0
* GitHub: https://github.com/grantmcdermott/etwfe
* Source code: https://github.com/cran/etwfe
* Date/Publication: 2024-02-27 04:20:02 UTC
* Number of recursive dependencies: 130

Run `revdepcheck::cloud_details(, "etwfe")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘etwfe.Rmd’ using rmarkdown
    ```

# fauxpas

<details>

* Version: 0.5.2
* GitHub: https://github.com/sckott/fauxpas
* Source code: https://github.com/cran/fauxpas
* Date/Publication: 2023-05-03 08:10:09 UTC
* Number of recursive dependencies: 59

Run `revdepcheck::cloud_details(, "fauxpas")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        R     4.0Mb
        doc   1.0Mb
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

# OptimModel

<details>

* Version: 2.0-1
* GitHub: NA
* Source code: https://github.com/cran/OptimModel
* Date/Publication: 2024-03-12 09:20:02 UTC
* Number of recursive dependencies: 63

Run `revdepcheck::cloud_details(, "OptimModel")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘OptimModel_vignette.Rmd’ using rmarkdown
    ```

# ordinalbayes

<details>

* Version: 0.1.1
* GitHub: https://github.com/kelliejarcher/ordinalbayes
* Source code: https://github.com/cran/ordinalbayes
* Date/Publication: 2022-04-06 15:10:02 UTC
* Number of recursive dependencies: 160

Run `revdepcheck::cloud_details(, "ordinalbayes")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is 12.3Mb
      sub-directories of 1Mb or more:
        data  12.0Mb
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘devtools’
      All declared Imports should be used.
    ```

# PopED

<details>

* Version: 0.6.0
* GitHub: https://github.com/andrewhooker/PopED
* Source code: https://github.com/cran/PopED
* Date/Publication: 2021-05-21 14:50:03 UTC
* Number of recursive dependencies: 141

Run `revdepcheck::cloud_details(, "PopED")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘examples.Rmd’ using rmarkdown
    
    Quitting from lines 151-174 [unnamed-chunk-6] (examples.Rmd)
    Error: processing vignette 'examples.Rmd' failed with diagnostics:
    incorrect number of dimensions
    --- failed re-building ‘examples.Rmd’
    
    --- re-building ‘intro-poped.Rmd’ using rmarkdown
    ...
    Quitting from lines 130-153 [unnamed-chunk-7] (intro-poped.Rmd)
    Error: processing vignette 'intro-poped.Rmd' failed with diagnostics:
    incorrect number of dimensions
    --- failed re-building ‘intro-poped.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘examples.Rmd’ ‘intro-poped.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘examples.Rmd’
      ...
    +     parameters = c(V = bpop[1] * exp(b[1]), KA = bpop[2] * exp(b[2]), 
    +         CL = bpop[3] * exp(b[3]) * .... [TRUNCATED] 
    
    > poped.db <- create.poped.database(ff_fun = ff.PK.1.comp.oral.md.CL, 
    +     fg_fun = sfg, fError_fun = feps.add.prop, bpop = c(V = 72.8, 
    +         K .... [TRUNCATED] 
    
      When sourcing ‘examples.R’:
    Error: incorrect number of dimensions
    Execution halted
    
      ‘examples.Rmd’ using ‘UTF-8’... failed
      ‘intro-poped.Rmd’ using ‘UTF-8’... OK
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        doc    1.4Mb
        test   1.1Mb
    ```

# posologyr

<details>

* Version: 1.2.6
* GitHub: https://github.com/levenc/posologyr
* Source code: https://github.com/cran/posologyr
* Date/Publication: 2024-08-27 16:30:02 UTC
* Number of recursive dependencies: 98

Run `revdepcheck::cloud_details(, "posologyr")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘a_posteriori_dosing.Rmd’ using rmarkdown
    
    Quitting from lines 85-87 [estim_map] (a_posteriori_dosing.Rmd)
    Error: processing vignette 'a_posteriori_dosing.Rmd' failed with diagnostics:
    object of type 'closure' is not subsettable
    --- failed re-building ‘a_posteriori_dosing.Rmd’
    
    --- re-building ‘a_priori_dosing.Rmd’ using rmarkdown
    
    ...
    object of type 'closure' is not subsettable
    --- failed re-building ‘route_of_administration.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘a_posteriori_dosing.Rmd’ ‘a_priori_dosing.Rmd’
      ‘auc_based_dosing.Rmd’ ‘multiple_endpoints.Rmd’
      ‘route_of_administration.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# rgho

<details>

* Version: 3.0.2
* GitHub: https://github.com/aphp/rgho
* Source code: https://github.com/cran/rgho
* Date/Publication: 2024-01-19 08:00:02 UTC
* Number of recursive dependencies: 62

Run `revdepcheck::cloud_details(, "rgho")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(rgho)
      > 
      > test_check("rgho")
      [ FAIL 2 | WARN 0 | SKIP 2 | PASS 1 ]
      
      ══ Skipped tests (2) ═══════════════════════════════════════════════════════════
    ...
      ── Failure ('test-get_gho.R:37:5'): Connection errors ──────────────────────────
      `get_gho_values(dimension = "COUNTRY")` produced unexpected messages.
      Expected match: [45]04
      Actual values:
      * Server error: (503) Service Unavailable
      
      
      [ FAIL 2 | WARN 0 | SKIP 2 | PASS 1 ]
      Error: Test failures
      Execution halted
    ```

# rTensor2

<details>

* Version: 2.0.0
* GitHub: NA
* Source code: https://github.com/cran/rTensor2
* Date/Publication: 2024-03-29 16:30:02 UTC
* Number of recursive dependencies: 39

Run `revdepcheck::cloud_details(, "rTensor2")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        data   6.0Mb
    ```

# rxode2

<details>

* Version: 2.1.3
* GitHub: https://github.com/nlmixr2/rxode2
* Source code: https://github.com/cran/rxode2
* Date/Publication: 2024-05-28 09:30:02 UTC
* Number of recursive dependencies: 194

Run `revdepcheck::cloud_details(, "rxode2")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘rxode2-syntax.Rmd’ using rmarkdown_notangle
    The ODE-based model specification may be coded inside four places: 
    
    - Inside a `rxode2({})` block statements:
    
    
    ``` r
    library(rxode2)
    #> rxode2 2.1.3 using 2 threads (see ?getRxThreads)
    ...
    <text>:1:1: unexpected '<'
    1: <
        ^
    --- failed re-building ‘rxode2-syntax.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘rxode2-syntax.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 22.8Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        libs  19.5Mb
    ```

# spathial

<details>

* Version: 0.1.2
* GitHub: NA
* Source code: https://github.com/cran/spathial
* Date/Publication: 2020-04-10 18:20:02 UTC
* Number of recursive dependencies: 40

Run `revdepcheck::cloud_details(, "spathial")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘vignette.rmd’ using rmarkdown
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘irlba’ ‘knitr’ ‘rmarkdown’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# trampoline

<details>

* Version: 0.1.1
* GitHub: https://github.com/rdinnager/trampoline
* Source code: https://github.com/cran/trampoline
* Date/Publication: 2022-01-04 20:40:02 UTC
* Number of recursive dependencies: 59

Run `revdepcheck::cloud_details(, "trampoline")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘tampolining.Rmd’ using rmarkdown
    
    Quitting from lines 43-44 [blow_up] (tampolining.Rmd)
    Error: processing vignette 'tampolining.Rmd' failed with diagnostics:
    C stack usage  9961812 is too close to the limit
    --- failed re-building ‘tampolining.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘tampolining.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘tampolining.Rmd’
      ...
    [1] 2
    [1] 3
    [1] 4
    [1] 5
    
    > print_numbers(10000)
    
      When sourcing ‘tampolining.R’:
    Error: C stack usage  9968228 is too close to the limit
    Execution halted
    
      ‘tampolining.Rmd’ using ‘UTF-8’... failed
    ```

# treesliceR

<details>

* Version: 1.0.2
* GitHub: https://github.com/AraujoMat/treesliceR
* Source code: https://github.com/cran/treesliceR
* Date/Publication: 2024-08-23 18:30:02 UTC
* Number of recursive dependencies: 159

Run `revdepcheck::cloud_details(, "treesliceR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
      > # * https://testthat.r-lib.org/articles/special-files.html
    ...
          ▆
       1. ├─base::suppressWarnings(...) at test-CpB.R:31:3
       2. │ └─base::withCallingHandlers(...)
       3. └─treesliceR::CpB(...) at test-CpB.R:34:5
       4.   └─foreach::foreach(commu = asb, .combine = rbind) %do% ...
       5.     └─e$fun(obj, substitute(ex), parent.frame(), e$data)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1743 ]
      Error: Test failures
      Execution halted
    ```

# WindCurves

<details>

* Version: 0.2
* GitHub: NA
* Source code: https://github.com/cran/WindCurves
* Date/Publication: 2022-05-01 04:50:02 UTC
* Number of recursive dependencies: 31

Run `revdepcheck::cloud_details(, "WindCurves")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘WindCurves_Info.Rmd’ using rmarkdown
    ```

# wordpredictor

<details>

* Version: 0.0.3
* GitHub: https://github.com/pakjiddat/word-predictor
* Source code: https://github.com/cran/wordpredictor
* Date/Publication: 2022-01-04 14:30:02 UTC
* Number of recursive dependencies: 80

Run `revdepcheck::cloud_details(, "wordpredictor")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘features.Rmd’ using rmarkdown
    Warning in file("", "w+b") :
      cannot open file '/tmp/Rtmph6yuor/Rfcbe17d2b8c': No such file or directory
    
    Quitting from lines 92-121 [data-sampling-1] (features.Rmd)
    Error: processing vignette 'features.Rmd' failed with diagnostics:
    cannot open the connection
    --- failed re-building ‘features.Rmd’
    ...
    Quitting from lines 154-170 [model-evaluation-1] (overview.Rmd)
    Error: processing vignette 'overview.Rmd' failed with diagnostics:
    cannot open the connection
    --- failed re-building ‘overview.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘features.Rmd’ ‘overview.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘features.Rmd’
      ...
    > da <- DataAnalyzer$new(fn, ve = ve)
    
    > df <- da$plot_n_gram_stats(opts = list(type = "top_features", 
    +     n = 10, save_to = "png", dir = "./reference/figures"))
    
      When sourcing ‘features.R’:
    Error: Cannot find directory './reference/figures'.
    ℹ Please supply an existing directory or use `create.dir = TRUE`.
    Execution halted
    sh: 0: getcwd() failed: No such file or directory
    
      ‘features.Rmd’ using ‘UTF-8’... failed
      ‘overview.Rmd’ using ‘UTF-8’... OK
    ```


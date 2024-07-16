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

# CGGP

<details>

* Version: 1.0.4
* GitHub: https://github.com/CollinErickson/CGGP
* Source code: https://github.com/cran/CGGP
* Date/Publication: 2024-01-23 03:22:57 UTC
* Number of recursive dependencies: 77

Run `revdepcheck::cloud_details(, "CGGP")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(CGGP)
      > 
      > test_check("CGGP")
      [ FAIL 1 | WARN 2 | SKIP 0 | PASS 695 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('testcorr.R:543:9'): Logs work for all ─────────────────────────────
      `numdC` not equal to corr_C_dC_logs$dCdtheta[, (1 + n2 * i - n2):(n2 * i)].
      1/30 mismatches
      [12] 137283 - 137248 == 34.5
      theta dimension with error is 1 , icor is 10 use_log_scale is TRUE theta is -0.678574629127979
      
      [ FAIL 1 | WARN 2 | SKIP 0 | PASS 695 ]
      Error: Test failures
      Execution halted
    ```

# circhelp

<details>

* Version: 1.1
* GitHub: https://github.com/achetverikov/circhelp
* Source code: https://github.com/cran/circhelp
* Date/Publication: 2024-07-04 17:10:02 UTC
* Number of recursive dependencies: 106

Run `revdepcheck::cloud_details(, "circhelp")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(circhelp)
      Loading required package: data.table
      Loading required package: ggplot2
      > library(circular)
      
      Attaching package: 'circular'
    ...
      [1] "Difference between expected and observed correlation is -0.000000"
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 16 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-functions.R:70:3'): conversion from circular SD to kappa works both ways ──
      abs(test_sd_deg - vm_kappa_to_circ_sd_deg(kappa_from_deg)) is not strictly less than `tolerance`. Difference: 0.000254
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 16 ]
      Error: Test failures
      Execution halted
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

# Haplin

<details>

* Version: 7.3.1
* GitHub: NA
* Source code: https://github.com/cran/Haplin
* Date/Publication: 2024-02-08 22:20:02 UTC
* Number of recursive dependencies: 66

Run `revdepcheck::cloud_details(, "Haplin")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        R         1.5Mb
        extdata   3.0Mb
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

# polmineR

<details>

* Version: 0.8.9
* GitHub: https://github.com/PolMine/polmineR
* Source code: https://github.com/cran/polmineR
* Date/Publication: 2023-10-29 21:50:02 UTC
* Number of recursive dependencies: 97

Run `revdepcheck::cloud_details(, "polmineR")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        R         2.0Mb
        extdata   1.9Mb
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

# PubChemR

<details>

* Version: 2.0
* GitHub: https://github.com/selcukorkmaz/PubChemR
* Source code: https://github.com/cran/PubChemR
* Date/Publication: 2024-07-13 06:30:02 UTC
* Number of recursive dependencies: 68

Run `revdepcheck::cloud_details(, "PubChemR")` for more info

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
      Error in `file(file, "rt")`: cannot open the connection to 'https://pubchem.ncbi.nlm.nih.gov/rest/pug/substance/sid/137349406/xrefs/PatentID/TXT'
      Backtrace:
          ▆
       1. └─PubChemR::get_pug_rest(...) at test-get_pug_rest.R:80:3
       2.   └─utils::read.table(response$url)
       3.     └─base::file(file, "rt")
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 202 ]
      Error: Test failures
      Execution halted
    ```

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘Exploring_Chemical_Data_with_PubChemR.Rmd’
      ...
    
    
    > result <- get_pug_rest(identifier = "2697049", namespace = "taxid", 
    +     domain = "taxonomy", operation = "aids", output = "TXT")
    Warning in file(file, "rt") :
      cannot open URL 'https://pubchem.ncbi.nlm.nih.gov/rest/pug/taxonomy/taxid/2697049/aids/TXT': HTTP status was '503 Service Unavailable'
    
      When sourcing ‘Exploring_Chemical_Data_with_PubChemR.R’:
    Error: cannot open the connection to 'https://pubchem.ncbi.nlm.nih.gov/rest/pug/taxonomy/taxid/2697049/aids/TXT'
    Execution halted
    
      ‘Enhancing_Chemical_Data_Access_with_PubChemR.Rmd’ using ‘UTF-8’... OK
      ‘Exploring_Chemical_Data_with_PubChemR.Rmd’ using ‘UTF-8’... failed
      ‘Working_with_PubChemR_to_Access_Chemical_Data.Rmd’ using ‘UTF-8’... OK
    ```

# refer

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/refer
* Date/Publication: 2021-11-08 12:10:04 UTC
* Number of recursive dependencies: 28

Run `revdepcheck::cloud_details(, "refer")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘introRef.Rmd’ using rmarkdown
    
    Quitting from lines 128-132 [unnamed-chunk-16] (introRef.Rmd)
    Error: processing vignette 'introRef.Rmd' failed with diagnostics:
    promise already under evaluation: recursive default argument reference or earlier problems?
    --- failed re-building ‘introRef.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘introRef.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
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
    #> rxode2 2.1.3 using 1 threads (see ?getRxThreads)
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
      installed size is 22.1Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        libs  18.8Mb
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
    C stack usage  9969444 is too close to the limit
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
    Error: C stack usage  9968180 is too close to the limit
    Execution halted
    
      ‘tampolining.Rmd’ using ‘UTF-8’... failed
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
      cannot open file '/tmp/RtmpsUf68T/Rfe4a3453de72': No such file or directory
    
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


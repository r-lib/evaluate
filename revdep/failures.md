# adjclust

<details>

* Version: 0.6.9
* GitHub: https://github.com/pneuvial/adjclust
* Source code: https://github.com/cran/adjclust
* Date/Publication: 2024-02-08 08:50:05 UTC
* Number of recursive dependencies: 119

Run `revdepcheck::cloud_details(, "adjclust")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/adjclust/new/adjclust.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘adjclust/DESCRIPTION’ ... OK
...
  When sourcing ‘hicClust.R’:
Error: there is no package called ‘HiTC’
Execution halted

  ‘hicClust.Rmd’ using ‘UTF-8’... failed
  ‘notesCHAC.Rmd’ using ‘UTF-8’... OK
  ‘snpClust.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 WARNING, 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/adjclust/old/adjclust.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘adjclust/DESCRIPTION’ ... OK
...
  When sourcing ‘hicClust.R’:
Error: there is no package called ‘HiTC’
Execution halted

  ‘hicClust.Rmd’ using ‘UTF-8’... failed
  ‘notesCHAC.Rmd’ using ‘UTF-8’... OK
  ‘snpClust.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 WARNING, 2 NOTEs





```
# ANOM

<details>

* Version: 0.5
* GitHub: https://github.com/PhilipPallmann/ANOM
* Source code: https://github.com/cran/ANOM
* Date/Publication: 2017-04-12 13:32:33 UTC
* Number of recursive dependencies: 60

Run `revdepcheck::cloud_details(, "ANOM")` for more info

</details>

## In both

*   checking whether package ‘ANOM’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/ANOM/new/ANOM.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘ANOM’ ...
** package ‘ANOM’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘ANOM’
* removing ‘/tmp/workdir/ANOM/new/ANOM.Rcheck/ANOM’


```
### CRAN

```
* installing *source* package ‘ANOM’ ...
** package ‘ANOM’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘ANOM’
* removing ‘/tmp/workdir/ANOM/old/ANOM.Rcheck/ANOM’


```
# apollo

<details>

* Version: 0.3.3
* GitHub: NA
* Source code: https://github.com/cran/apollo
* Date/Publication: 2024-06-04 09:46:44 UTC
* Number of recursive dependencies: 79

Run `revdepcheck::cloud_details(, "apollo")` for more info

</details>

## In both

*   checking whether package ‘apollo’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/apollo/new/apollo.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘apollo’ ...
** package ‘apollo’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fopenmp  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:28,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘apollo’
* removing ‘/tmp/workdir/apollo/new/apollo.Rcheck/apollo’


```
### CRAN

```
* installing *source* package ‘apollo’ ...
** package ‘apollo’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fopenmp  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:28,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘apollo’
* removing ‘/tmp/workdir/apollo/old/apollo.Rcheck/apollo’


```
# arealDB

<details>

* Version: 0.6.3
* GitHub: https://github.com/luckinet/arealDB
* Source code: https://github.com/cran/arealDB
* Date/Publication: 2023-07-03 10:00:02 UTC
* Number of recursive dependencies: 110

Run `revdepcheck::cloud_details(, "arealDB")` for more info

</details>

## In both

*   checking whether package ‘arealDB’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/arealDB/new/arealDB.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘arealDB’ ...
** package ‘arealDB’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.3.1/lib/R/site-library/redland/libs/redland.so':
  librdf.so.0: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... asNamespace -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘arealDB’
* removing ‘/tmp/workdir/arealDB/new/arealDB.Rcheck/arealDB’


```
### CRAN

```
* installing *source* package ‘arealDB’ ...
** package ‘arealDB’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.3.1/lib/R/site-library/redland/libs/redland.so':
  librdf.so.0: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... asNamespace -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘arealDB’
* removing ‘/tmp/workdir/arealDB/old/arealDB.Rcheck/arealDB’


```
# assessor

<details>

* Version: 1.1.0
* GitHub: https://github.com/jhlee1408/assessor
* Source code: https://github.com/cran/assessor
* Date/Publication: 2024-04-03 04:23:02 UTC
* Number of recursive dependencies: 107

Run `revdepcheck::cloud_details(, "assessor")` for more info

</details>

## In both

*   checking whether package ‘assessor’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/assessor/new/assessor.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘assessor’ ...
** package ‘assessor’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘assessor’
* removing ‘/tmp/workdir/assessor/new/assessor.Rcheck/assessor’


```
### CRAN

```
* installing *source* package ‘assessor’ ...
** package ‘assessor’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘assessor’
* removing ‘/tmp/workdir/assessor/old/assessor.Rcheck/assessor’


```
# AutoScore

<details>

* Version: 1.0.0
* GitHub: https://github.com/nliulab/AutoScore
* Source code: https://github.com/cran/AutoScore
* Date/Publication: 2022-10-15 22:15:26 UTC
* Number of recursive dependencies: 170

Run `revdepcheck::cloud_details(, "AutoScore")` for more info

</details>

## In both

*   checking whether package ‘AutoScore’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/AutoScore/new/AutoScore.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘AutoScore’ ...
** package ‘AutoScore’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘rms’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘AutoScore’
* removing ‘/tmp/workdir/AutoScore/new/AutoScore.Rcheck/AutoScore’


```
### CRAN

```
* installing *source* package ‘AutoScore’ ...
** package ‘AutoScore’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘rms’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘AutoScore’
* removing ‘/tmp/workdir/AutoScore/old/AutoScore.Rcheck/AutoScore’


```
# baRulho

<details>

* Version: 2.1.2
* GitHub: https://github.com/ropensci/baRulho
* Source code: https://github.com/cran/baRulho
* Date/Publication: 2024-08-31 13:10:07 UTC
* Number of recursive dependencies: 115

Run `revdepcheck::cloud_details(, "baRulho")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/baRulho/new/baRulho.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘baRulho/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'warbleR', 'ohun'

Package suggested but not available for checking: ‘Rraven’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/baRulho/old/baRulho.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘baRulho/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'warbleR', 'ohun'

Package suggested but not available for checking: ‘Rraven’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# bayesCT

<details>

* Version: 0.99.3
* GitHub: https://github.com/thevaachandereng/bayesCT
* Source code: https://github.com/cran/bayesCT
* Date/Publication: 2020-07-01 09:30:02 UTC
* Number of recursive dependencies: 122

Run `revdepcheck::cloud_details(, "bayesCT")` for more info

</details>

## In both

*   checking whether package ‘bayesCT’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/bayesCT/new/bayesCT.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘bayesCT’ ...
** package ‘bayesCT’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘bayesCT’
* removing ‘/tmp/workdir/bayesCT/new/bayesCT.Rcheck/bayesCT’


```
### CRAN

```
* installing *source* package ‘bayesCT’ ...
** package ‘bayesCT’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘bayesCT’
* removing ‘/tmp/workdir/bayesCT/old/bayesCT.Rcheck/bayesCT’


```
# bayesDP

<details>

* Version: 1.3.6
* GitHub: https://github.com/graemeleehickey/bayesDP
* Source code: https://github.com/cran/bayesDP
* Date/Publication: 2022-01-30 22:20:02 UTC
* Number of recursive dependencies: 80

Run `revdepcheck::cloud_details(, "bayesDP")` for more info

</details>

## In both

*   checking whether package ‘bayesDP’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/bayesDP/new/bayesDP.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘bayesDP’ ...
** package ‘bayesDP’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c bdplm.cpp -o bdplm.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c ppexp.cpp -o ppexp.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o bayesDP.so RcppExports.o bdplm.o ppexp.o -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/bayesDP/new/bayesDP.Rcheck/00LOCK-bayesDP/00new/bayesDP/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘bayesDP’
* removing ‘/tmp/workdir/bayesDP/new/bayesDP.Rcheck/bayesDP’


```
### CRAN

```
* installing *source* package ‘bayesDP’ ...
** package ‘bayesDP’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c bdplm.cpp -o bdplm.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c ppexp.cpp -o ppexp.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o bayesDP.so RcppExports.o bdplm.o ppexp.o -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/bayesDP/old/bayesDP.Rcheck/00LOCK-bayesDP/00new/bayesDP/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘bayesDP’
* removing ‘/tmp/workdir/bayesDP/old/bayesDP.Rcheck/bayesDP’


```
# BayesESS

<details>

* Version: 0.1.19
* GitHub: NA
* Source code: https://github.com/cran/BayesESS
* Date/Publication: 2019-11-25 19:50:06 UTC
* Number of recursive dependencies: 41

Run `revdepcheck::cloud_details(, "BayesESS")` for more info

</details>

## In both

*   checking whether package ‘BayesESS’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/BayesESS/new/BayesESS.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘BayesESS’ ...
** package ‘BayesESS’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:28,
...
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o BayesESS.so RcppExports.o fastMean.o fastProd.o fastSum.o registerDynamicSymbol.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/BayesESS/new/BayesESS.Rcheck/00LOCK-BayesESS/00new/BayesESS/libs
** R
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘MCMCpack’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘BayesESS’
* removing ‘/tmp/workdir/BayesESS/new/BayesESS.Rcheck/BayesESS’


```
### CRAN

```
* installing *source* package ‘BayesESS’ ...
** package ‘BayesESS’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:28,
...
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o BayesESS.so RcppExports.o fastMean.o fastProd.o fastSum.o registerDynamicSymbol.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/BayesESS/old/BayesESS.Rcheck/00LOCK-BayesESS/00new/BayesESS/libs
** R
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘MCMCpack’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘BayesESS’
* removing ‘/tmp/workdir/BayesESS/old/BayesESS.Rcheck/BayesESS’


```
# BayesFactor

<details>

* Version: 0.9.12-4.7
* GitHub: https://github.com/richarddmorey/BayesFactor
* Source code: https://github.com/cran/BayesFactor
* Date/Publication: 2024-01-24 15:02:50 UTC
* Number of recursive dependencies: 78

Run `revdepcheck::cloud_details(, "BayesFactor")` for more info

</details>

## In both

*   checking whether package ‘BayesFactor’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/BayesFactor/new/BayesFactor.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘BayesFactor’ ...
** package ‘BayesFactor’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2  -c RcppCallback.cpp -o RcppCallback.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:28,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘BayesFactor’
* removing ‘/tmp/workdir/BayesFactor/new/BayesFactor.Rcheck/BayesFactor’


```
### CRAN

```
* installing *source* package ‘BayesFactor’ ...
** package ‘BayesFactor’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2  -c RcppCallback.cpp -o RcppCallback.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:28,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘BayesFactor’
* removing ‘/tmp/workdir/BayesFactor/old/BayesFactor.Rcheck/BayesFactor’


```
# BayesSurvive

<details>

* Version: 0.0.2
* GitHub: https://github.com/ocbe-uio/BayesSurvive
* Source code: https://github.com/cran/BayesSurvive
* Date/Publication: 2024-06-04 13:20:12 UTC
* Number of recursive dependencies: 129

Run `revdepcheck::cloud_details(, "BayesSurvive")` for more info

</details>

## In both

*   checking whether package ‘BayesSurvive’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/BayesSurvive/new/BayesSurvive.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘BayesSurvive’ ...
** package ‘BayesSurvive’ successfully unpacked and MD5 sums checked
** using staged installation
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether the compiler supports GNU C++... yes
checking whether g++ -std=gnu++17 accepts -g... yes
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘rms’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘BayesSurvive’
* removing ‘/tmp/workdir/BayesSurvive/new/BayesSurvive.Rcheck/BayesSurvive’


```
### CRAN

```
* installing *source* package ‘BayesSurvive’ ...
** package ‘BayesSurvive’ successfully unpacked and MD5 sums checked
** using staged installation
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether the compiler supports GNU C++... yes
checking whether g++ -std=gnu++17 accepts -g... yes
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘rms’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘BayesSurvive’
* removing ‘/tmp/workdir/BayesSurvive/old/BayesSurvive.Rcheck/BayesSurvive’


```
# bbknnR

<details>

* Version: 1.1.1
* GitHub: https://github.com/ycli1995/bbknnR
* Source code: https://github.com/cran/bbknnR
* Date/Publication: 2024-02-13 10:20:03 UTC
* Number of recursive dependencies: 163

Run `revdepcheck::cloud_details(, "bbknnR")` for more info

</details>

## In both

*   checking whether package ‘bbknnR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/bbknnR/new/bbknnR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘bbknnR’ ...
** package ‘bbknnR’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c data_manipulation.cpp -o data_manipulation.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o bbknnR.so RcppExports.o data_manipulation.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/bbknnR/new/bbknnR.Rcheck/00LOCK-bbknnR/00new/bbknnR/libs
** R
...
Warning: namespace ‘Seurat’ is not available and has been replaced
by .GlobalEnv when processing object ‘panc8_small’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘bbknnR’
* removing ‘/tmp/workdir/bbknnR/new/bbknnR.Rcheck/bbknnR’


```
### CRAN

```
* installing *source* package ‘bbknnR’ ...
** package ‘bbknnR’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c data_manipulation.cpp -o data_manipulation.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o bbknnR.so RcppExports.o data_manipulation.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/bbknnR/old/bbknnR.Rcheck/00LOCK-bbknnR/00new/bbknnR/libs
** R
...
Warning: namespace ‘Seurat’ is not available and has been replaced
by .GlobalEnv when processing object ‘panc8_small’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘bbknnR’
* removing ‘/tmp/workdir/bbknnR/old/bbknnR.Rcheck/bbknnR’


```
# bbmix

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/bbmix
* Date/Publication: 2023-07-06 14:00:09 UTC
* Number of recursive dependencies: 78

Run `revdepcheck::cloud_details(, "bbmix")` for more info

</details>

## In both

*   checking whether package ‘bbmix’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/bbmix/new/bbmix.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘bbmix’ ...
** package ‘bbmix’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘bbmix’
* removing ‘/tmp/workdir/bbmix/new/bbmix.Rcheck/bbmix’


```
### CRAN

```
* installing *source* package ‘bbmix’ ...
** package ‘bbmix’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘bbmix’
* removing ‘/tmp/workdir/bbmix/old/bbmix.Rcheck/bbmix’


```
# BCClong

<details>

* Version: 1.0.3
* GitHub: NA
* Source code: https://github.com/cran/BCClong
* Date/Publication: 2024-06-24 00:00:02 UTC
* Number of recursive dependencies: 145

Run `revdepcheck::cloud_details(, "BCClong")` for more info

</details>

## In both

*   checking whether package ‘BCClong’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/BCClong/new/BCClong.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘BCClong’ ...
** package ‘BCClong’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c BCC.cpp -o BCC.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c Likelihood.cpp -o Likelihood.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c c_which.cpp -o c_which.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o BCClong.so BCC.o Likelihood.o RcppExports.o c_which.o -fopenmp -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.3.1/lib/R/lib -lR
...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘BCClong’
* removing ‘/tmp/workdir/BCClong/new/BCClong.Rcheck/BCClong’


```
### CRAN

```
* installing *source* package ‘BCClong’ ...
** package ‘BCClong’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c BCC.cpp -o BCC.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c Likelihood.cpp -o Likelihood.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c c_which.cpp -o c_which.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o BCClong.so BCC.o Likelihood.o RcppExports.o c_which.o -fopenmp -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.3.1/lib/R/lib -lR
...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘BCClong’
* removing ‘/tmp/workdir/BCClong/old/BCClong.Rcheck/BCClong’


```
# BFpack

<details>

* Version: 1.3.0
* GitHub: https://github.com/jomulder/BFpack
* Source code: https://github.com/cran/BFpack
* Date/Publication: 2024-06-19 10:50:02 UTC
* Number of recursive dependencies: 106

Run `revdepcheck::cloud_details(, "BFpack")` for more info

</details>

## In both

*   checking whether package ‘BFpack’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/BFpack/new/BFpack.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘BFpack’ ...
** package ‘BFpack’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using Fortran compiler: ‘GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c BFpack_init.c -o BFpack_init.o
gfortran  -fpic  -g -O2  -c  bct_mixedordinal.f90 -o bct_mixedordinal.o
gfortran  -fpic  -g -O2  -c  bct_prior.f90 -o bct_prior.o
gcc -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o BFpack.so BFpack_init.o bct_mixedordinal.o bct_prior.o -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.3.1/lib/R/lib -lR
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘BFpack’
* removing ‘/tmp/workdir/BFpack/new/BFpack.Rcheck/BFpack’


```
### CRAN

```
* installing *source* package ‘BFpack’ ...
** package ‘BFpack’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using Fortran compiler: ‘GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c BFpack_init.c -o BFpack_init.o
gfortran  -fpic  -g -O2  -c  bct_mixedordinal.f90 -o bct_mixedordinal.o
gfortran  -fpic  -g -O2  -c  bct_prior.f90 -o bct_prior.o
gcc -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o BFpack.so BFpack_init.o bct_mixedordinal.o bct_prior.o -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.3.1/lib/R/lib -lR
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘BFpack’
* removing ‘/tmp/workdir/BFpack/old/BFpack.Rcheck/BFpack’


```
# BGGM

<details>

* Version: 2.1.3
* GitHub: https://github.com/donaldRwilliams/BGGM
* Source code: https://github.com/cran/BGGM
* Date/Publication: 2024-07-05 20:30:02 UTC
* Number of recursive dependencies: 209

Run `revdepcheck::cloud_details(, "BGGM")` for more info

</details>

## In both

*   checking whether package ‘BGGM’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/BGGM/new/BGGM.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘BGGM’ ...
** package ‘BGGM’ successfully unpacked and MD5 sums checked
** using staged installation
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C++ compiler... yes
checking whether g++ -std=gnu++17 accepts -g... yes
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘BGGM’
* removing ‘/tmp/workdir/BGGM/new/BGGM.Rcheck/BGGM’


```
### CRAN

```
* installing *source* package ‘BGGM’ ...
** package ‘BGGM’ successfully unpacked and MD5 sums checked
** using staged installation
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C++ compiler... yes
checking whether g++ -std=gnu++17 accepts -g... yes
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘BGGM’
* removing ‘/tmp/workdir/BGGM/old/BGGM.Rcheck/BGGM’


```
# biosensors.usc

<details>

* Version: 1.0
* GitHub: NA
* Source code: https://github.com/cran/biosensors.usc
* Date/Publication: 2022-05-05 05:40:02 UTC
* Number of recursive dependencies: 84

Run `revdepcheck::cloud_details(, "biosensors.usc")` for more info

</details>

## In both

*   checking whether package ‘biosensors.usc’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/biosensors.usc/new/biosensors.usc.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘biosensors.usc’ ...
** package ‘biosensors.usc’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -I../inst/include -fpic  -g -O2  -c biosensors.usc.cpp -o biosensors.usc.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -I../inst/include -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o biosensors.usc.so biosensors.usc.o RcppExports.o -fopenmp -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/biosensors.usc/new/biosensors.usc.Rcheck/00LOCK-biosensors.usc/00new/biosensors.usc/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.1 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘biosensors.usc’
* removing ‘/tmp/workdir/biosensors.usc/new/biosensors.usc.Rcheck/biosensors.usc’


```
### CRAN

```
* installing *source* package ‘biosensors.usc’ ...
** package ‘biosensors.usc’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -I../inst/include -fpic  -g -O2  -c biosensors.usc.cpp -o biosensors.usc.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -I../inst/include -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o biosensors.usc.so biosensors.usc.o RcppExports.o -fopenmp -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/biosensors.usc/old/biosensors.usc.Rcheck/00LOCK-biosensors.usc/00new/biosensors.usc/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.1 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘biosensors.usc’
* removing ‘/tmp/workdir/biosensors.usc/old/biosensors.usc.Rcheck/biosensors.usc’


```
# bmstdr

<details>

* Version: 0.7.9
* GitHub: https://github.com/sujit-sahu/bmstdr
* Source code: https://github.com/cran/bmstdr
* Date/Publication: 2023-12-18 15:00:02 UTC
* Number of recursive dependencies: 216

Run `revdepcheck::cloud_details(, "bmstdr")` for more info

</details>

## In both

*   checking whether package ‘bmstdr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/bmstdr/new/bmstdr.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘bmstdr’ ...
** package ‘bmstdr’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/opt/R/4.3.1/lib/R/site-library/BH/include' -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.3.1/lib/R/site-library/rstan/include' -I'/opt/R/4.3.1/lib/R/site-library/StanHeaders/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppParallel/include' -I/usr/local/include    -I'/opt/R/4.3.1/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘bmstdr’
* removing ‘/tmp/workdir/bmstdr/new/bmstdr.Rcheck/bmstdr’


```
### CRAN

```
* installing *source* package ‘bmstdr’ ...
** package ‘bmstdr’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/opt/R/4.3.1/lib/R/site-library/BH/include' -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.3.1/lib/R/site-library/rstan/include' -I'/opt/R/4.3.1/lib/R/site-library/StanHeaders/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppParallel/include' -I/usr/local/include    -I'/opt/R/4.3.1/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘bmstdr’
* removing ‘/tmp/workdir/bmstdr/old/bmstdr.Rcheck/bmstdr’


```
# bndovb

<details>

* Version: 1.1
* GitHub: NA
* Source code: https://github.com/cran/bndovb
* Date/Publication: 2021-07-30 17:40:02 UTC
* Number of recursive dependencies: 53

Run `revdepcheck::cloud_details(, "bndovb")` for more info

</details>

## In both

*   checking whether package ‘bndovb’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/bndovb/new/bndovb.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘bndovb’ ...
** package ‘bndovb’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘bndovb’
* removing ‘/tmp/workdir/bndovb/new/bndovb.Rcheck/bndovb’


```
### CRAN

```
* installing *source* package ‘bndovb’ ...
** package ‘bndovb’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘bndovb’
* removing ‘/tmp/workdir/bndovb/old/bndovb.Rcheck/bndovb’


```
# bsub

<details>

* Version: 1.1.0
* GitHub: https://github.com/jokergoo/bsub
* Source code: https://github.com/cran/bsub
* Date/Publication: 2021-07-01 15:50:10 UTC
* Number of recursive dependencies: 79

Run `revdepcheck::cloud_details(, "bsub")` for more info

</details>

## In both

*   checking whether package ‘bsub’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/bsub/new/bsub.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘bsub’ ...
** package ‘bsub’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘rjson’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘bsub’
* removing ‘/tmp/workdir/bsub/new/bsub.Rcheck/bsub’


```
### CRAN

```
* installing *source* package ‘bsub’ ...
** package ‘bsub’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘rjson’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘bsub’
* removing ‘/tmp/workdir/bsub/old/bsub.Rcheck/bsub’


```
# CACIMAR

<details>

* Version: 1.0.0
* GitHub: https://github.com/jiang-junyao/CACIMAR
* Source code: https://github.com/cran/CACIMAR
* Date/Publication: 2022-05-18 08:20:02 UTC
* Number of recursive dependencies: 162

Run `revdepcheck::cloud_details(, "CACIMAR")` for more info

</details>

## In both

*   checking whether package ‘CACIMAR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/CACIMAR/new/CACIMAR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘CACIMAR’ ...
** package ‘CACIMAR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘SeuratObject’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is being loaded, but >= 1.6.4 is required
Execution halted
ERROR: lazy loading failed for package ‘CACIMAR’
* removing ‘/tmp/workdir/CACIMAR/new/CACIMAR.Rcheck/CACIMAR’


```
### CRAN

```
* installing *source* package ‘CACIMAR’ ...
** package ‘CACIMAR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘SeuratObject’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is being loaded, but >= 1.6.4 is required
Execution halted
ERROR: lazy loading failed for package ‘CACIMAR’
* removing ‘/tmp/workdir/CACIMAR/old/CACIMAR.Rcheck/CACIMAR’


```
# caROC

<details>

* Version: 0.1.5
* GitHub: NA
* Source code: https://github.com/cran/caROC
* Date/Publication: 2021-04-02 08:20:03 UTC
* Number of recursive dependencies: 34

Run `revdepcheck::cloud_details(, "caROC")` for more info

</details>

## In both

*   checking whether package ‘caROC’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/caROC/new/caROC.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘caROC’ ...
** package ‘caROC’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘quantreg’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘caROC’
* removing ‘/tmp/workdir/caROC/new/caROC.Rcheck/caROC’


```
### CRAN

```
* installing *source* package ‘caROC’ ...
** package ‘caROC’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘quantreg’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘caROC’
* removing ‘/tmp/workdir/caROC/old/caROC.Rcheck/caROC’


```
# CGPfunctions

<details>

* Version: 0.6.3
* GitHub: https://github.com/ibecav/CGPfunctions
* Source code: https://github.com/cran/CGPfunctions
* Date/Publication: 2020-11-12 14:50:09 UTC
* Number of recursive dependencies: 148

Run `revdepcheck::cloud_details(, "CGPfunctions")` for more info

</details>

## In both

*   checking whether package ‘CGPfunctions’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/CGPfunctions/new/CGPfunctions.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘CGPfunctions’ ...
** package ‘CGPfunctions’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘CGPfunctions’
* removing ‘/tmp/workdir/CGPfunctions/new/CGPfunctions.Rcheck/CGPfunctions’


```
### CRAN

```
* installing *source* package ‘CGPfunctions’ ...
** package ‘CGPfunctions’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘CGPfunctions’
* removing ‘/tmp/workdir/CGPfunctions/old/CGPfunctions.Rcheck/CGPfunctions’


```
# chemodiv

<details>

* Version: 0.3.0
* GitHub: https://github.com/hpetren/chemodiv
* Source code: https://github.com/cran/chemodiv
* Date/Publication: 2023-08-17 17:52:33 UTC
* Number of recursive dependencies: 170

Run `revdepcheck::cloud_details(, "chemodiv")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/chemodiv/new/chemodiv.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘chemodiv/DESCRIPTION’ ... OK
...
* this is package ‘chemodiv’ version ‘0.3.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'fmcsR', 'ChemmineR'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/chemodiv/old/chemodiv.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘chemodiv/DESCRIPTION’ ... OK
...
* this is package ‘chemodiv’ version ‘0.3.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'fmcsR', 'ChemmineR'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# chicane

<details>

* Version: 0.1.8
* GitHub: NA
* Source code: https://github.com/cran/chicane
* Date/Publication: 2021-11-06 15:00:16 UTC
* Number of recursive dependencies: 177

Run `revdepcheck::cloud_details(, "chicane")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/chicane/new/chicane.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘chicane/DESCRIPTION’ ... OK
...
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘Getting_Started.Rmd’ using ‘UTF-8’... OK
  ‘Visualising_Interactions.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 WARNING, 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/chicane/old/chicane.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘chicane/DESCRIPTION’ ... OK
...
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘Getting_Started.Rmd’ using ‘UTF-8’... OK
  ‘Visualising_Interactions.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 WARNING, 1 NOTE





```
# chipPCR

<details>

* Version: 1.0-2
* GitHub: https://github.com/PCRuniversum/chipPCR
* Source code: https://github.com/cran/chipPCR
* Date/Publication: 2021-03-05 07:50:03 UTC
* Number of recursive dependencies: 141

Run `revdepcheck::cloud_details(, "chipPCR")` for more info

</details>

## In both

*   checking whether package ‘chipPCR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/chipPCR/new/chipPCR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘chipPCR’ ...
** package ‘chipPCR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘chipPCR’
* removing ‘/tmp/workdir/chipPCR/new/chipPCR.Rcheck/chipPCR’


```
### CRAN

```
* installing *source* package ‘chipPCR’ ...
** package ‘chipPCR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘chipPCR’
* removing ‘/tmp/workdir/chipPCR/old/chipPCR.Rcheck/chipPCR’


```
# cinaR

<details>

* Version: 0.2.3
* GitHub: https://github.com/eonurk/cinaR
* Source code: https://github.com/cran/cinaR
* Date/Publication: 2022-05-18 14:00:09 UTC
* Number of recursive dependencies: 177

Run `revdepcheck::cloud_details(, "cinaR")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/cinaR/new/cinaR.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘cinaR/DESCRIPTION’ ... OK
...
* checking package dependencies ... ERROR
Packages required but not available:
  'ChIPseeker', 'TxDb.Hsapiens.UCSC.hg38.knownGene',
  'TxDb.Hsapiens.UCSC.hg19.knownGene',
  'TxDb.Mmusculus.UCSC.mm10.knownGene'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/cinaR/old/cinaR.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘cinaR/DESCRIPTION’ ... OK
...
* checking package dependencies ... ERROR
Packages required but not available:
  'ChIPseeker', 'TxDb.Hsapiens.UCSC.hg38.knownGene',
  'TxDb.Hsapiens.UCSC.hg19.knownGene',
  'TxDb.Mmusculus.UCSC.mm10.knownGene'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# cmprskcoxmsm

<details>

* Version: 0.2.1
* GitHub: NA
* Source code: https://github.com/cran/cmprskcoxmsm
* Date/Publication: 2021-09-04 05:50:02 UTC
* Number of recursive dependencies: 71

Run `revdepcheck::cloud_details(, "cmprskcoxmsm")` for more info

</details>

## In both

*   checking whether package ‘cmprskcoxmsm’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/cmprskcoxmsm/new/cmprskcoxmsm.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘cmprskcoxmsm’ ...
** package ‘cmprskcoxmsm’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘cmprskcoxmsm’
* removing ‘/tmp/workdir/cmprskcoxmsm/new/cmprskcoxmsm.Rcheck/cmprskcoxmsm’


```
### CRAN

```
* installing *source* package ‘cmprskcoxmsm’ ...
** package ‘cmprskcoxmsm’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘cmprskcoxmsm’
* removing ‘/tmp/workdir/cmprskcoxmsm/old/cmprskcoxmsm.Rcheck/cmprskcoxmsm’


```
# CNVScope

<details>

* Version: 3.7.2
* GitHub: https://github.com/jamesdalg/CNVScope
* Source code: https://github.com/cran/CNVScope
* Date/Publication: 2022-03-30 23:40:08 UTC
* Number of recursive dependencies: 206

Run `revdepcheck::cloud_details(, "CNVScope")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/CNVScope/new/CNVScope.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘CNVScope/DESCRIPTION’ ... OK
...
Packages required but not available: 'GenomicInteractions', 'rtracklayer'

Packages suggested but not available for checking:
  'ComplexHeatmap', 'HiCseg', 'GenomicFeatures',
  'BSgenome.Hsapiens.UCSC.hg19'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/CNVScope/old/CNVScope.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘CNVScope/DESCRIPTION’ ... OK
...
Packages required but not available: 'GenomicInteractions', 'rtracklayer'

Packages suggested but not available for checking:
  'ComplexHeatmap', 'HiCseg', 'GenomicFeatures',
  'BSgenome.Hsapiens.UCSC.hg19'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# coarseDataTools

<details>

* Version: 0.6-6
* GitHub: NA
* Source code: https://github.com/cran/coarseDataTools
* Date/Publication: 2021-12-09 17:20:05 UTC
* Number of recursive dependencies: 17

Run `revdepcheck::cloud_details(, "coarseDataTools")` for more info

</details>

## In both

*   checking whether package ‘coarseDataTools’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/coarseDataTools/new/coarseDataTools.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘coarseDataTools’ ...
** package ‘coarseDataTools’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘coarseDataTools’
* removing ‘/tmp/workdir/coarseDataTools/new/coarseDataTools.Rcheck/coarseDataTools’


```
### CRAN

```
* installing *source* package ‘coarseDataTools’ ...
** package ‘coarseDataTools’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘coarseDataTools’
* removing ‘/tmp/workdir/coarseDataTools/old/coarseDataTools.Rcheck/coarseDataTools’


```
# COMBO

<details>

* Version: 1.1.0
* GitHub: NA
* Source code: https://github.com/cran/COMBO
* Date/Publication: 2024-07-06 22:22:08 UTC
* Number of recursive dependencies: 123

Run `revdepcheck::cloud_details(, "COMBO")` for more info

</details>

## In both

*   checking whether package ‘COMBO’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/COMBO/new/COMBO.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘COMBO’ ...
** package ‘COMBO’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘COMBO’
* removing ‘/tmp/workdir/COMBO/new/COMBO.Rcheck/COMBO’


```
### CRAN

```
* installing *source* package ‘COMBO’ ...
** package ‘COMBO’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘COMBO’
* removing ‘/tmp/workdir/COMBO/old/COMBO.Rcheck/COMBO’


```
# COMMA

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/COMMA
* Date/Publication: 2024-07-21 10:10:05 UTC
* Number of recursive dependencies: 72

Run `revdepcheck::cloud_details(, "COMMA")` for more info

</details>

## In both

*   checking whether package ‘COMMA’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/COMMA/new/COMMA.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘COMMA’ ...
** package ‘COMMA’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘COMMA’
* removing ‘/tmp/workdir/COMMA/new/COMMA.Rcheck/COMMA’


```
### CRAN

```
* installing *source* package ‘COMMA’ ...
** package ‘COMMA’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘COMMA’
* removing ‘/tmp/workdir/COMMA/old/COMMA.Rcheck/COMMA’


```
# ConnectednessApproach

<details>

* Version: 1.0.3
* GitHub: NA
* Source code: https://github.com/cran/ConnectednessApproach
* Date/Publication: 2024-06-16 16:20:02 UTC
* Number of recursive dependencies: 131

Run `revdepcheck::cloud_details(, "ConnectednessApproach")` for more info

</details>

## In both

*   checking whether package ‘ConnectednessApproach’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/ConnectednessApproach/new/ConnectednessApproach.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘ConnectednessApproach’ ...
** package ‘ConnectednessApproach’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘ConnectednessApproach’
* removing ‘/tmp/workdir/ConnectednessApproach/new/ConnectednessApproach.Rcheck/ConnectednessApproach’


```
### CRAN

```
* installing *source* package ‘ConnectednessApproach’ ...
** package ‘ConnectednessApproach’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘ConnectednessApproach’
* removing ‘/tmp/workdir/ConnectednessApproach/old/ConnectednessApproach.Rcheck/ConnectednessApproach’


```
# conos

<details>

* Version: 1.5.2
* GitHub: https://github.com/kharchenkolab/conos
* Source code: https://github.com/cran/conos
* Date/Publication: 2024-02-26 19:30:05 UTC
* Number of recursive dependencies: 240

Run `revdepcheck::cloud_details(, "conos")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/conos/new/conos.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘conos/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘ComplexHeatmap’

Package suggested but not available for checking: ‘pagoda2’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/conos/old/conos.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘conos/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘ComplexHeatmap’

Package suggested but not available for checking: ‘pagoda2’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# cotram

<details>

* Version: 0.5-1
* GitHub: NA
* Source code: https://github.com/cran/cotram
* Date/Publication: 2024-07-19 10:20:03 UTC
* Number of recursive dependencies: 32

Run `revdepcheck::cloud_details(, "cotram")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/cotram/new/cotram.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘cotram/DESCRIPTION’ ... OK
...
* this is package ‘cotram’ version ‘0.5-1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'tram', 'mlt'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/cotram/old/cotram.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘cotram/DESCRIPTION’ ... OK
...
* this is package ‘cotram’ version ‘0.5-1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'tram', 'mlt'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# countSTAR

<details>

* Version: 1.0.2
* GitHub: https://github.com/bking124/countSTAR
* Source code: https://github.com/cran/countSTAR
* Date/Publication: 2023-06-30 18:30:08 UTC
* Number of recursive dependencies: 99

Run `revdepcheck::cloud_details(, "countSTAR")` for more info

</details>

## In both

*   checking whether package ‘countSTAR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/countSTAR/new/countSTAR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘countSTAR’ ...
** package ‘countSTAR’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c rounded_source.cpp -o rounded_source.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o countSTAR.so RcppExports.o rounded_source.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/countSTAR/new/countSTAR.Rcheck/00LOCK-countSTAR/00new/countSTAR/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘countSTAR’
* removing ‘/tmp/workdir/countSTAR/new/countSTAR.Rcheck/countSTAR’


```
### CRAN

```
* installing *source* package ‘countSTAR’ ...
** package ‘countSTAR’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c rounded_source.cpp -o rounded_source.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o countSTAR.so RcppExports.o rounded_source.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/countSTAR/old/countSTAR.Rcheck/00LOCK-countSTAR/00new/countSTAR/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘countSTAR’
* removing ‘/tmp/workdir/countSTAR/old/countSTAR.Rcheck/countSTAR’


```
# crosstalkr

<details>

* Version: 1.0.5
* GitHub: NA
* Source code: https://github.com/cran/crosstalkr
* Date/Publication: 2024-05-17 11:40:09 UTC
* Number of recursive dependencies: 164

Run `revdepcheck::cloud_details(, "crosstalkr")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/crosstalkr/new/crosstalkr.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘crosstalkr/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘ensembldb’

Package suggested but not available for checking: ‘EnsDb.Hsapiens.v86’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/crosstalkr/old/crosstalkr.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘crosstalkr/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘ensembldb’

Package suggested but not available for checking: ‘EnsDb.Hsapiens.v86’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# CSCNet

<details>

* Version: 0.1.2
* GitHub: NA
* Source code: https://github.com/cran/CSCNet
* Date/Publication: 2022-11-08 18:50:02 UTC
* Number of recursive dependencies: 171

Run `revdepcheck::cloud_details(, "CSCNet")` for more info

</details>

## In both

*   checking whether package ‘CSCNet’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/CSCNet/new/CSCNet.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘CSCNet’ ...
** package ‘CSCNet’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘rms’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘CSCNet’
* removing ‘/tmp/workdir/CSCNet/new/CSCNet.Rcheck/CSCNet’


```
### CRAN

```
* installing *source* package ‘CSCNet’ ...
** package ‘CSCNet’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘rms’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘CSCNet’
* removing ‘/tmp/workdir/CSCNet/old/CSCNet.Rcheck/CSCNet’


```
# ctsem

<details>

* Version: 3.10.1
* GitHub: https://github.com/cdriveraus/ctsem
* Source code: https://github.com/cran/ctsem
* Date/Publication: 2024-08-19 14:40:06 UTC
* Number of recursive dependencies: 158

Run `revdepcheck::cloud_details(, "ctsem")` for more info

</details>

## In both

*   checking whether package ‘ctsem’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/ctsem/new/ctsem.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘ctsem’ ...
** package ‘ctsem’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/opt/R/4.3.1/lib/R/site-library/BH/include' -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppParallel/include' -I'/opt/R/4.3.1/lib/R/site-library/rstan/include' -I'/opt/R/4.3.1/lib/R/site-library/StanHeaders/include' -I/usr/local/include    -I'/opt/R/4.3.1/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
...
/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_ctsm_namespace::model_ctsm; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:21:10:   required from here
/opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:654:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  654 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.3.1/lib/R/etc/Makeconf:198: stanExports_ctsm.o] Error 1
ERROR: compilation failed for package ‘ctsem’
* removing ‘/tmp/workdir/ctsem/new/ctsem.Rcheck/ctsem’


```
### CRAN

```
* installing *source* package ‘ctsem’ ...
** package ‘ctsem’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/opt/R/4.3.1/lib/R/site-library/BH/include' -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppParallel/include' -I'/opt/R/4.3.1/lib/R/site-library/rstan/include' -I'/opt/R/4.3.1/lib/R/site-library/StanHeaders/include' -I/usr/local/include    -I'/opt/R/4.3.1/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
...
/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_ctsm_namespace::model_ctsm; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:21:10:   required from here
/opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:654:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  654 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.3.1/lib/R/etc/Makeconf:198: stanExports_ctsm.o] Error 1
ERROR: compilation failed for package ‘ctsem’
* removing ‘/tmp/workdir/ctsem/old/ctsem.Rcheck/ctsem’


```
# dataone

<details>

* Version: 2.2.2
* GitHub: https://github.com/DataONEorg/rdataone
* Source code: https://github.com/cran/dataone
* Date/Publication: 2022-06-10 19:30:02 UTC
* Number of recursive dependencies: 69

Run `revdepcheck::cloud_details(, "dataone")` for more info

</details>

## In both

*   checking whether package ‘dataone’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/dataone/new/dataone.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘dataone’ ...
** package ‘dataone’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.3.1/lib/R/site-library/redland/libs/redland.so':
  librdf.so.0: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... namespaceImport -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘dataone’
* removing ‘/tmp/workdir/dataone/new/dataone.Rcheck/dataone’


```
### CRAN

```
* installing *source* package ‘dataone’ ...
** package ‘dataone’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.3.1/lib/R/site-library/redland/libs/redland.so':
  librdf.so.0: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... namespaceImport -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘dataone’
* removing ‘/tmp/workdir/dataone/old/dataone.Rcheck/dataone’


```
# datapack

<details>

* Version: 1.4.1
* GitHub: https://github.com/ropensci/datapack
* Source code: https://github.com/cran/datapack
* Date/Publication: 2022-06-10 19:40:01 UTC
* Number of recursive dependencies: 68

Run `revdepcheck::cloud_details(, "datapack")` for more info

</details>

## In both

*   checking whether package ‘datapack’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/datapack/new/datapack.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘datapack’ ...
** package ‘datapack’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.3.1/lib/R/site-library/redland/libs/redland.so':
  librdf.so.0: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... namespaceImport -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘datapack’
* removing ‘/tmp/workdir/datapack/new/datapack.Rcheck/datapack’


```
### CRAN

```
* installing *source* package ‘datapack’ ...
** package ‘datapack’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.3.1/lib/R/site-library/redland/libs/redland.so':
  librdf.so.0: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... namespaceImport -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘datapack’
* removing ‘/tmp/workdir/datapack/old/datapack.Rcheck/datapack’


```
# deeptrafo

<details>

* Version: 0.1-1
* GitHub: NA
* Source code: https://github.com/cran/deeptrafo
* Date/Publication: 2022-11-22 09:50:02 UTC
* Number of recursive dependencies: 96

Run `revdepcheck::cloud_details(, "deeptrafo")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/deeptrafo/new/deeptrafo.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘deeptrafo/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘mlt’

Packages suggested but not available for checking: 'tram', 'cotram'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/deeptrafo/old/deeptrafo.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘deeptrafo/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘mlt’

Packages suggested but not available for checking: 'tram', 'cotram'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# diveMove

<details>

* Version: 1.6.2
* GitHub: https://github.com/spluque/diveMove
* Source code: https://github.com/cran/diveMove
* Date/Publication: 2024-01-23 22:02:47 UTC
* Number of recursive dependencies: 84

Run `revdepcheck::cloud_details(, "diveMove")` for more info

</details>

## In both

*   checking whether package ‘diveMove’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/diveMove/new/diveMove.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘diveMove’ ...
** package ‘diveMove’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c diveMove_init.c -o diveMove_init.o
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c run_quantile.c -o run_quantile.o
gcc -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o diveMove.so diveMove_init.o run_quantile.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/diveMove/new/diveMove.Rcheck/00LOCK-diveMove/00new/diveMove/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘diveMove’
* removing ‘/tmp/workdir/diveMove/new/diveMove.Rcheck/diveMove’


```
### CRAN

```
* installing *source* package ‘diveMove’ ...
** package ‘diveMove’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c diveMove_init.c -o diveMove_init.o
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c run_quantile.c -o run_quantile.o
gcc -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o diveMove.so diveMove_init.o run_quantile.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/diveMove/old/diveMove.Rcheck/00LOCK-diveMove/00new/diveMove/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘diveMove’
* removing ‘/tmp/workdir/diveMove/old/diveMove.Rcheck/diveMove’


```
# do

<details>

* Version: 2.0.0.0
* GitHub: https://github.com/yikeshu0611/do
* Source code: https://github.com/cran/do
* Date/Publication: 2021-08-03 11:40:02 UTC
* Number of recursive dependencies: 70

Run `revdepcheck::cloud_details(, "do")` for more info

</details>

## In both

*   checking whether package ‘do’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/do/new/do.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘do’ ...
** package ‘do’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: object ‘.__T__[:base’ is not exported by 'namespace:data.table'
Execution halted
ERROR: lazy loading failed for package ‘do’
* removing ‘/tmp/workdir/do/new/do.Rcheck/do’


```
### CRAN

```
* installing *source* package ‘do’ ...
** package ‘do’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: object ‘.__T__[:base’ is not exported by 'namespace:data.table'
Execution halted
ERROR: lazy loading failed for package ‘do’
* removing ‘/tmp/workdir/do/old/do.Rcheck/do’


```
# DR.SC

<details>

* Version: 3.4
* GitHub: https://github.com/feiyoung/DR.SC
* Source code: https://github.com/cran/DR.SC
* Date/Publication: 2024-03-19 08:40:02 UTC
* Number of recursive dependencies: 151

Run `revdepcheck::cloud_details(, "DR.SC")` for more info

</details>

## In both

*   checking whether package ‘DR.SC’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/DR.SC/new/DR.SC.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘DR.SC’ ...
** package ‘DR.SC’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++17
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -DARMA_64BIT_WORD -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -DARMA_64BIT_WORD -fpic  -g -O2  -c getNB_fast.cpp -o getNB_fast.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -DARMA_64BIT_WORD -fpic  -g -O2  -c mt_paral_job.cpp -o mt_paral_job.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -DARMA_64BIT_WORD -fpic  -g -O2  -c mt_paral_job2.cpp -o mt_paral_job2.o
...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘DR.SC’
* removing ‘/tmp/workdir/DR.SC/new/DR.SC.Rcheck/DR.SC’


```
### CRAN

```
* installing *source* package ‘DR.SC’ ...
** package ‘DR.SC’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++17
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -DARMA_64BIT_WORD -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -DARMA_64BIT_WORD -fpic  -g -O2  -c getNB_fast.cpp -o getNB_fast.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -DARMA_64BIT_WORD -fpic  -g -O2  -c mt_paral_job.cpp -o mt_paral_job.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -DARMA_64BIT_WORD -fpic  -g -O2  -c mt_paral_job2.cpp -o mt_paral_job2.o
...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘DR.SC’
* removing ‘/tmp/workdir/DR.SC/old/DR.SC.Rcheck/DR.SC’


```
# driveR

<details>

* Version: 0.4.1
* GitHub: https://github.com/egeulgen/driveR
* Source code: https://github.com/cran/driveR
* Date/Publication: 2023-08-19 14:02:36 UTC
* Number of recursive dependencies: 166

Run `revdepcheck::cloud_details(, "driveR")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/driveR/new/driveR.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘driveR/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available:
  'GenomicFeatures', 'TxDb.Hsapiens.UCSC.hg19.knownGene',
  'TxDb.Hsapiens.UCSC.hg38.knownGene'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/driveR/old/driveR.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘driveR/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available:
  'GenomicFeatures', 'TxDb.Hsapiens.UCSC.hg19.knownGene',
  'TxDb.Hsapiens.UCSC.hg38.knownGene'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# drtmle

<details>

* Version: 1.1.2
* GitHub: https://github.com/benkeser/drtmle
* Source code: https://github.com/cran/drtmle
* Date/Publication: 2023-01-05 19:50:02 UTC
* Number of recursive dependencies: 81

Run `revdepcheck::cloud_details(, "drtmle")` for more info

</details>

## In both

*   checking whether package ‘drtmle’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/drtmle/new/drtmle.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘drtmle’ ...
** package ‘drtmle’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘drtmle’
* removing ‘/tmp/workdir/drtmle/new/drtmle.Rcheck/drtmle’


```
### CRAN

```
* installing *source* package ‘drtmle’ ...
** package ‘drtmle’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘drtmle’
* removing ‘/tmp/workdir/drtmle/old/drtmle.Rcheck/drtmle’


```
# DrugSim2DR

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/DrugSim2DR
* Date/Publication: 2023-08-10 04:50:02 UTC
* Number of recursive dependencies: 89

Run `revdepcheck::cloud_details(, "DrugSim2DR")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/DrugSim2DR/new/DrugSim2DR.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘DrugSim2DR/DESCRIPTION’ ... OK
...
* this is package ‘DrugSim2DR’ version ‘0.1.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘ChemmineR’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/DrugSim2DR/old/DrugSim2DR.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘DrugSim2DR/DESCRIPTION’ ... OK
...
* this is package ‘DrugSim2DR’ version ‘0.1.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘ChemmineR’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# DRviaSPCN

<details>

* Version: 0.1.4
* GitHub: NA
* Source code: https://github.com/cran/DRviaSPCN
* Date/Publication: 2024-01-13 05:00:02 UTC
* Number of recursive dependencies: 180

Run `revdepcheck::cloud_details(, "DRviaSPCN")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/DRviaSPCN/new/DRviaSPCN.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘DRviaSPCN/DESCRIPTION’ ... OK
...
* this is package ‘DRviaSPCN’ version ‘0.1.4’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘ChemmineR’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/DRviaSPCN/old/DRviaSPCN.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘DRviaSPCN/DESCRIPTION’ ... OK
...
* this is package ‘DRviaSPCN’ version ‘0.1.4’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘ChemmineR’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# ech

<details>

* Version: 0.1.3
* GitHub: NA
* Source code: https://github.com/cran/ech
* Date/Publication: 2023-05-11 08:50:17 UTC
* Number of recursive dependencies: 126

Run `revdepcheck::cloud_details(, "ech")` for more info

</details>

## In both

*   checking whether package ‘ech’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/ech/new/ech.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘ech’ ...
** package ‘ech’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘rjson’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘ech’
* removing ‘/tmp/workdir/ech/new/ech.Rcheck/ech’


```
### CRAN

```
* installing *source* package ‘ech’ ...
** package ‘ech’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘rjson’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘ech’
* removing ‘/tmp/workdir/ech/old/ech.Rcheck/ech’


```
# EcoEnsemble

<details>

* Version: 1.1.0
* GitHub: https://github.com/CefasRepRes/EcoEnsemble
* Source code: https://github.com/cran/EcoEnsemble
* Date/Publication: 2024-08-19 17:20:06 UTC
* Number of recursive dependencies: 91

Run `revdepcheck::cloud_details(, "EcoEnsemble")` for more info

</details>

## In both

*   checking whether package ‘EcoEnsemble’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/EcoEnsemble/new/EcoEnsemble.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘EcoEnsemble’ ...
** package ‘EcoEnsemble’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/opt/R/4.3.1/lib/R/site-library/BH/include' -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppParallel/include' -I'/opt/R/4.3.1/lib/R/site-library/rstan/include' -I'/opt/R/4.3.1/lib/R/site-library/StanHeaders/include' -I/usr/local/include    -I'/opt/R/4.3.1/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c KF_back.cpp -o KF_back.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
...
/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_ensemble_model_hierarchical_withdrivers_namespace::model_ensemble_model_hierarchical_withdrivers; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:21:10:   required from here
/opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:654:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  654 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.3.1/lib/R/etc/Makeconf:198: stanExports_ensemble_model_hierarchical_withdrivers.o] Error 1
ERROR: compilation failed for package ‘EcoEnsemble’
* removing ‘/tmp/workdir/EcoEnsemble/new/EcoEnsemble.Rcheck/EcoEnsemble’


```
### CRAN

```
* installing *source* package ‘EcoEnsemble’ ...
** package ‘EcoEnsemble’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/opt/R/4.3.1/lib/R/site-library/BH/include' -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppParallel/include' -I'/opt/R/4.3.1/lib/R/site-library/rstan/include' -I'/opt/R/4.3.1/lib/R/site-library/StanHeaders/include' -I/usr/local/include    -I'/opt/R/4.3.1/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c KF_back.cpp -o KF_back.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
...
/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_ensemble_model_hierarchical_withdrivers_namespace::model_ensemble_model_hierarchical_withdrivers; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:21:10:   required from here
/opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:654:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  654 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.3.1/lib/R/etc/Makeconf:198: stanExports_ensemble_model_hierarchical_withdrivers.o] Error 1
ERROR: compilation failed for package ‘EcoEnsemble’
* removing ‘/tmp/workdir/EcoEnsemble/old/EcoEnsemble.Rcheck/EcoEnsemble’


```
# ecolottery

<details>

* Version: 1.0.0
* GitHub: https://github.com/frmunoz/ecolottery
* Source code: https://github.com/cran/ecolottery
* Date/Publication: 2017-07-03 11:01:29 UTC
* Number of recursive dependencies: 88

Run `revdepcheck::cloud_details(, "ecolottery")` for more info

</details>

## In both

*   checking whether package ‘ecolottery’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/ecolottery/new/ecolottery.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘ecolottery’ ...
** package ‘ecolottery’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘ecolottery’
* removing ‘/tmp/workdir/ecolottery/new/ecolottery.Rcheck/ecolottery’


```
### CRAN

```
* installing *source* package ‘ecolottery’ ...
** package ‘ecolottery’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘ecolottery’
* removing ‘/tmp/workdir/ecolottery/old/ecolottery.Rcheck/ecolottery’


```
# EdSurvey

<details>

* Version: 4.0.7
* GitHub: https://github.com/American-Institutes-for-Research/EdSurvey
* Source code: https://github.com/cran/EdSurvey
* Date/Publication: 2024-06-27 14:50:14 UTC
* Number of recursive dependencies: 128

Run `revdepcheck::cloud_details(, "EdSurvey")` for more info

</details>

## In both

*   checking whether package ‘EdSurvey’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/EdSurvey/new/EdSurvey.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘EdSurvey’ ...
** package ‘EdSurvey’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Warning in check_dep_version() :
  ABI version mismatch: 
lme4 was built with Matrix ABI version 1
Current Matrix ABI version is 0
Please re-install lme4 from source or restore original ‘Matrix’ package
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘EdSurvey’
* removing ‘/tmp/workdir/EdSurvey/new/EdSurvey.Rcheck/EdSurvey’


```
### CRAN

```
* installing *source* package ‘EdSurvey’ ...
** package ‘EdSurvey’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Warning in check_dep_version() :
  ABI version mismatch: 
lme4 was built with Matrix ABI version 1
Current Matrix ABI version is 0
Please re-install lme4 from source or restore original ‘Matrix’ package
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘EdSurvey’
* removing ‘/tmp/workdir/EdSurvey/old/EdSurvey.Rcheck/EdSurvey’


```
# EpiEstim

<details>

* Version: 2.2-4
* GitHub: https://github.com/mrc-ide/EpiEstim
* Source code: https://github.com/cran/EpiEstim
* Date/Publication: 2021-01-07 16:20:10 UTC
* Number of recursive dependencies: 91

Run `revdepcheck::cloud_details(, "EpiEstim")` for more info

</details>

## In both

*   checking whether package ‘EpiEstim’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/EpiEstim/new/EpiEstim.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘EpiEstim’ ...
** package ‘EpiEstim’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘EpiEstim’
* removing ‘/tmp/workdir/EpiEstim/new/EpiEstim.Rcheck/EpiEstim’


```
### CRAN

```
* installing *source* package ‘EpiEstim’ ...
** package ‘EpiEstim’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘EpiEstim’
* removing ‘/tmp/workdir/EpiEstim/old/EpiEstim.Rcheck/EpiEstim’


```
# erah

<details>

* Version: 2.0.1
* GitHub: https://github.com/xdomingoal/erah-devel
* Source code: https://github.com/cran/erah
* Date/Publication: 2023-12-20 10:10:02 UTC
* Number of recursive dependencies: 91

Run `revdepcheck::cloud_details(, "erah")` for more info

</details>

## In both

*   checking whether package ‘erah’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/erah/new/erah.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘erah’ ...
** package ‘erah’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c runfunc.c -o runfunc.o
gcc -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o erah.so registerDynamicSymbol.o runfunc.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/erah/new/erah.Rcheck/00LOCK-erah/00new/erah/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘erah’
* removing ‘/tmp/workdir/erah/new/erah.Rcheck/erah’


```
### CRAN

```
* installing *source* package ‘erah’ ...
** package ‘erah’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c runfunc.c -o runfunc.o
gcc -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o erah.so registerDynamicSymbol.o runfunc.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/erah/old/erah.Rcheck/00LOCK-erah/00new/erah/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘erah’
* removing ‘/tmp/workdir/erah/old/erah.Rcheck/erah’


```
# EWSmethods

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/EWSmethods
* Number of recursive dependencies: 140

Run `revdepcheck::cloud_details(, "EWSmethods")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# FAIRmaterials

<details>

* Version: 0.4.2.1
* GitHub: NA
* Source code: https://github.com/cran/FAIRmaterials
* Date/Publication: 2024-06-27 15:40:02 UTC
* Number of recursive dependencies: 94

Run `revdepcheck::cloud_details(, "FAIRmaterials")` for more info

</details>

## In both

*   checking whether package ‘FAIRmaterials’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/FAIRmaterials/new/FAIRmaterials.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘FAIRmaterials’ ...
** package ‘FAIRmaterials’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.3.1/lib/R/site-library/redland/libs/redland.so':
  librdf.so.0: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... asNamespace -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘FAIRmaterials’
* removing ‘/tmp/workdir/FAIRmaterials/new/FAIRmaterials.Rcheck/FAIRmaterials’


```
### CRAN

```
* installing *source* package ‘FAIRmaterials’ ...
** package ‘FAIRmaterials’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.3.1/lib/R/site-library/redland/libs/redland.so':
  librdf.so.0: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... asNamespace -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘FAIRmaterials’
* removing ‘/tmp/workdir/FAIRmaterials/old/FAIRmaterials.Rcheck/FAIRmaterials’


```
# FREEtree

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/FREEtree
* Date/Publication: 2020-06-25 15:00:03 UTC
* Number of recursive dependencies: 134

Run `revdepcheck::cloud_details(, "FREEtree")` for more info

</details>

## In both

*   checking whether package ‘FREEtree’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/FREEtree/new/FREEtree.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘FREEtree’ ...
** package ‘FREEtree’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Warning in check_dep_version() :
  ABI version mismatch: 
lme4 was built with Matrix ABI version 1
Current Matrix ABI version is 0
Please re-install lme4 from source or restore original ‘Matrix’ package
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘FREEtree’
* removing ‘/tmp/workdir/FREEtree/new/FREEtree.Rcheck/FREEtree’


```
### CRAN

```
* installing *source* package ‘FREEtree’ ...
** package ‘FREEtree’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Warning in check_dep_version() :
  ABI version mismatch: 
lme4 was built with Matrix ABI version 1
Current Matrix ABI version is 0
Please re-install lme4 from source or restore original ‘Matrix’ package
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘FREEtree’
* removing ‘/tmp/workdir/FREEtree/old/FREEtree.Rcheck/FREEtree’


```
# GALLO

<details>

* Version: 1.5
* GitHub: NA
* Source code: https://github.com/cran/GALLO
* Date/Publication: 2024-06-04 15:30:20 UTC
* Number of recursive dependencies: 142

Run `revdepcheck::cloud_details(, "GALLO")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/GALLO/new/GALLO.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘GALLO/DESCRIPTION’ ... OK
...
* this is package ‘GALLO’ version ‘1.5’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘rtracklayer’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/GALLO/old/GALLO.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘GALLO/DESCRIPTION’ ... OK
...
* this is package ‘GALLO’ version ‘1.5’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘rtracklayer’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# gap

<details>

* Version: 1.6
* GitHub: https://github.com/jinghuazhao/R
* Source code: https://github.com/cran/gap
* Date/Publication: 2024-08-27 04:40:06 UTC
* Number of recursive dependencies: 199

Run `revdepcheck::cloud_details(, "gap")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/gap/new/gap.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘gap/DESCRIPTION’ ... OK
...
--- failed re-building ‘jss.Rnw’

SUMMARY: processing the following file failed:
  ‘jss.Rnw’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 4 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/gap/old/gap.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘gap/DESCRIPTION’ ... OK
...
--- failed re-building ‘jss.Rnw’

SUMMARY: processing the following file failed:
  ‘jss.Rnw’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 4 NOTEs





```
# geneHapR

<details>

* Version: 1.2.4
* GitHub: NA
* Source code: https://github.com/cran/geneHapR
* Date/Publication: 2024-03-01 14:32:40 UTC
* Number of recursive dependencies: 180

Run `revdepcheck::cloud_details(, "geneHapR")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/geneHapR/new/geneHapR.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘geneHapR/DESCRIPTION’ ... OK
...
* this is package ‘geneHapR’ version ‘1.2.4’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘rtracklayer’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/geneHapR/old/geneHapR.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘geneHapR/DESCRIPTION’ ... OK
...
* this is package ‘geneHapR’ version ‘1.2.4’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘rtracklayer’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# GeneNMF

<details>

* Version: 0.6.0
* GitHub: https://github.com/carmonalab/GeneNMF
* Source code: https://github.com/cran/GeneNMF
* Date/Publication: 2024-07-22 08:30:02 UTC
* Number of recursive dependencies: 161

Run `revdepcheck::cloud_details(, "GeneNMF")` for more info

</details>

## In both

*   checking whether package ‘GeneNMF’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/GeneNMF/new/GeneNMF.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘GeneNMF’ ...
** package ‘GeneNMF’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘Seurat’ is not available and has been replaced
by .GlobalEnv when processing object ‘sampleObj’
Warning: namespace ‘Seurat’ is not available and has been replaced
by .GlobalEnv when processing object ‘sampleObj’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘GeneNMF’
* removing ‘/tmp/workdir/GeneNMF/new/GeneNMF.Rcheck/GeneNMF’


```
### CRAN

```
* installing *source* package ‘GeneNMF’ ...
** package ‘GeneNMF’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘Seurat’ is not available and has been replaced
by .GlobalEnv when processing object ‘sampleObj’
Warning: namespace ‘Seurat’ is not available and has been replaced
by .GlobalEnv when processing object ‘sampleObj’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘GeneNMF’
* removing ‘/tmp/workdir/GeneNMF/old/GeneNMF.Rcheck/GeneNMF’


```
# GeneSelectR

<details>

* Version: 1.0.1
* GitHub: https://github.com/dzhakparov/GeneSelectR
* Source code: https://github.com/cran/GeneSelectR
* Date/Publication: 2024-02-03 14:00:05 UTC
* Number of recursive dependencies: 191

Run `revdepcheck::cloud_details(, "GeneSelectR")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/GeneSelectR/new/GeneSelectR.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘GeneSelectR/DESCRIPTION’ ... OK
...
+     build_vignettes = FALSE)

  When sourcing ‘example.R’:
Error: there is no package called ‘devtools’
Execution halted

  ‘example.Rmd’ using ‘UTF-8’... failed
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 WARNING, 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/GeneSelectR/old/GeneSelectR.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘GeneSelectR/DESCRIPTION’ ... OK
...
+     build_vignettes = FALSE)

  When sourcing ‘example.R’:
Error: there is no package called ‘devtools’
Execution halted

  ‘example.Rmd’ using ‘UTF-8’... failed
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 WARNING, 1 NOTE





```
# geomorph

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/geomorph
* Number of recursive dependencies: 72

Run `revdepcheck::cloud_details(, "geomorph")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# gJLS2

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/gJLS2
* Date/Publication: 2021-09-30 09:00:05 UTC
* Number of recursive dependencies: 45

Run `revdepcheck::cloud_details(, "gJLS2")` for more info

</details>

## In both

*   checking whether package ‘gJLS2’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/gJLS2/new/gJLS2.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘gJLS2’ ...
** package ‘gJLS2’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘gJLS2’
* removing ‘/tmp/workdir/gJLS2/new/gJLS2.Rcheck/gJLS2’


```
### CRAN

```
* installing *source* package ‘gJLS2’ ...
** package ‘gJLS2’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘gJLS2’
* removing ‘/tmp/workdir/gJLS2/old/gJLS2.Rcheck/gJLS2’


```
# gllvm

<details>

* Version: 1.4.3
* GitHub: https://github.com/JenniNiku/gllvm
* Source code: https://github.com/cran/gllvm
* Date/Publication: 2023-09-18 15:00:02 UTC
* Number of recursive dependencies: 67

Run `revdepcheck::cloud_details(, "gllvm")` for more info

</details>

## In both

*   checking whether package ‘gllvm’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/gllvm/new/gllvm.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘gllvm’ ...
** package ‘gllvm’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG -DTMBAD_FRAMEWORK -I'/opt/R/4.3.1/lib/R/site-library/TMB/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2  -c gllvm.cpp -o gllvm.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.3.1/lib/R/site-library/TMB/include/TMB.hpp:92,
                 from gllvm.cpp:2:
...
/opt/R/4.3.1/lib/R/site-library/TMB/include/tiny_ad/atomic.hpp:30:1:   required from ‘void atomic::bessel_kOp<order, ninput, noutput, mask>::reverse(TMBad::ReverseArgs<Type>&) [with Type = double; int order = 3; int ninput = 2; int noutput = 8; long int mask = 9]’
/opt/R/4.3.1/lib/R/site-library/TMB/include/TMBad/global.hpp:1721:28:   required from ‘void TMBad::global::AddForwardMarkReverseMark<OperatorBase>::reverse(TMBad::ReverseArgs<Type>&) [with Type = double; OperatorBase = TMBad::global::AddIncrementDecrement<TMBad::global::AddDependencies<TMBad::global::AddInputSizeOutputSize<atomic::bessel_kOp<3, 2, 8, 9> > > >]’
/opt/R/4.3.1/lib/R/site-library/TMB/include/TMBad/global.hpp:2134:57:   required from ‘void TMBad::global::Complete<OperatorBase>::reverse(TMBad::ReverseArgs<double>&) [with OperatorBase = atomic::bessel_kOp<3, 2, 8, 9>]’
/opt/R/4.3.1/lib/R/site-library/TMB/include/TMBad/global.hpp:2134:10:   required from here
/opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:56:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.3.1/lib/R/etc/Makeconf:200: gllvm.o] Error 1
ERROR: compilation failed for package ‘gllvm’
* removing ‘/tmp/workdir/gllvm/new/gllvm.Rcheck/gllvm’


```
### CRAN

```
* installing *source* package ‘gllvm’ ...
** package ‘gllvm’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG -DTMBAD_FRAMEWORK -I'/opt/R/4.3.1/lib/R/site-library/TMB/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2  -c gllvm.cpp -o gllvm.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.3.1/lib/R/site-library/TMB/include/TMB.hpp:92,
                 from gllvm.cpp:2:
...
/opt/R/4.3.1/lib/R/site-library/TMB/include/tiny_ad/atomic.hpp:30:1:   required from ‘void atomic::bessel_kOp<order, ninput, noutput, mask>::reverse(TMBad::ReverseArgs<Type>&) [with Type = double; int order = 3; int ninput = 2; int noutput = 8; long int mask = 9]’
/opt/R/4.3.1/lib/R/site-library/TMB/include/TMBad/global.hpp:1721:28:   required from ‘void TMBad::global::AddForwardMarkReverseMark<OperatorBase>::reverse(TMBad::ReverseArgs<Type>&) [with Type = double; OperatorBase = TMBad::global::AddIncrementDecrement<TMBad::global::AddDependencies<TMBad::global::AddInputSizeOutputSize<atomic::bessel_kOp<3, 2, 8, 9> > > >]’
/opt/R/4.3.1/lib/R/site-library/TMB/include/TMBad/global.hpp:2134:57:   required from ‘void TMBad::global::Complete<OperatorBase>::reverse(TMBad::ReverseArgs<double>&) [with OperatorBase = atomic::bessel_kOp<3, 2, 8, 9>]’
/opt/R/4.3.1/lib/R/site-library/TMB/include/TMBad/global.hpp:2134:10:   required from here
/opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:56:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.3.1/lib/R/etc/Makeconf:200: gllvm.o] Error 1
ERROR: compilation failed for package ‘gllvm’
* removing ‘/tmp/workdir/gllvm/old/gllvm.Rcheck/gllvm’


```
# gmoTree

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/gmoTree
* Number of recursive dependencies: 60

Run `revdepcheck::cloud_details(, "gmoTree")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# gpuR

<details>

* Version: 2.0.6
* GitHub: https://github.com/cdeterman/gpuR
* Source code: https://github.com/cran/gpuR
* Date/Publication: 2024-05-23 16:00:02 UTC
* Number of recursive dependencies: 39

Run `revdepcheck::cloud_details(, "gpuR")` for more info

</details>

## In both

*   checking whether package ‘gpuR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/gpuR/new/gpuR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘gpuR’ ...
** package ‘gpuR’ successfully unpacked and MD5 sums checked
** using staged installation
OPENCL_FLAGS not set, using default -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS  -DCL_HPP_TARGET_OPENCL_VERSION=120
Linux OS
found OpenCL library
Checking OpenCL C++ API
OPENCL_INC not set, using default include directory /usr/include
No OpenCL C++ API found, will use the headers contained in the package

...
/opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Assign.h:66:28:   required from ‘Derived& Eigen::MatrixBase<Derived>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::Matrix<double, -1, 1>; Derived = Eigen::Block<Eigen::Ref<Eigen::Matrix<double, -1, -1>, 0, Eigen::OuterStride<> >, -1, 1, true>]’
../inst/include/gpuR/dynEigenMat.hpp:192:30:   required from ‘void dynEigenMat<T>::setCol(SEXP, int) [with T = double; SEXP = SEXPREC*]’
../inst/include/gpuR/dynEigenMat.hpp:383:16:   required from here
/opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:1071:54: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o gpuR.so RcppExports.o chol.o context.o custom_math.o device.o gpuEigenPtr.o gpuMatrix_igemm.o norm.o platform.o set_row_order.o solve.o synchronize.o trunc_gpuMat.o utils-vcl.o utils.o vclPtr.o vienna_blas1.o vienna_blas2.o vienna_blas3.o vienna_eigen.o vienna_qr.o vienna_stats.o vienna_svd.o -lOpenCL -L/opt/R/4.3.1/lib/R/lib -lR
/usr/bin/ld: cannot find -lOpenCL: No such file or directory
collect2: error: ld returned 1 exit status
make: *** [/opt/R/4.3.1/lib/R/share/make/shlib.mk:10: gpuR.so] Error 1
ERROR: compilation failed for package ‘gpuR’
* removing ‘/tmp/workdir/gpuR/new/gpuR.Rcheck/gpuR’


```
### CRAN

```
* installing *source* package ‘gpuR’ ...
** package ‘gpuR’ successfully unpacked and MD5 sums checked
** using staged installation
OPENCL_FLAGS not set, using default -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS  -DCL_HPP_TARGET_OPENCL_VERSION=120
Linux OS
found OpenCL library
Checking OpenCL C++ API
OPENCL_INC not set, using default include directory /usr/include
No OpenCL C++ API found, will use the headers contained in the package

...
/opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Assign.h:66:28:   required from ‘Derived& Eigen::MatrixBase<Derived>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::Matrix<double, -1, 1>; Derived = Eigen::Block<Eigen::Ref<Eigen::Matrix<double, -1, -1>, 0, Eigen::OuterStride<> >, -1, 1, true>]’
../inst/include/gpuR/dynEigenMat.hpp:192:30:   required from ‘void dynEigenMat<T>::setCol(SEXP, int) [with T = double; SEXP = SEXPREC*]’
../inst/include/gpuR/dynEigenMat.hpp:383:16:   required from here
/opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:1071:54: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o gpuR.so RcppExports.o chol.o context.o custom_math.o device.o gpuEigenPtr.o gpuMatrix_igemm.o norm.o platform.o set_row_order.o solve.o synchronize.o trunc_gpuMat.o utils-vcl.o utils.o vclPtr.o vienna_blas1.o vienna_blas2.o vienna_blas3.o vienna_eigen.o vienna_qr.o vienna_stats.o vienna_svd.o -lOpenCL -L/opt/R/4.3.1/lib/R/lib -lR
/usr/bin/ld: cannot find -lOpenCL: No such file or directory
collect2: error: ld returned 1 exit status
make: *** [/opt/R/4.3.1/lib/R/share/make/shlib.mk:10: gpuR.so] Error 1
ERROR: compilation failed for package ‘gpuR’
* removing ‘/tmp/workdir/gpuR/old/gpuR.Rcheck/gpuR’


```
# hettx

<details>

* Version: 0.1.3
* GitHub: https://github.com/bfifield/hettx
* Source code: https://github.com/cran/hettx
* Date/Publication: 2023-08-19 22:22:34 UTC
* Number of recursive dependencies: 85

Run `revdepcheck::cloud_details(, "hettx")` for more info

</details>

## In both

*   checking whether package ‘hettx’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/hettx/new/hettx.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘hettx’ ...
** package ‘hettx’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘hettx’
* removing ‘/tmp/workdir/hettx/new/hettx.Rcheck/hettx’


```
### CRAN

```
* installing *source* package ‘hettx’ ...
** package ‘hettx’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘hettx’
* removing ‘/tmp/workdir/hettx/old/hettx.Rcheck/hettx’


```
# Hmisc

<details>

* Version: 5.1-3
* GitHub: NA
* Source code: https://github.com/cran/Hmisc
* Date/Publication: 2024-05-28 07:10:02 UTC
* Number of recursive dependencies: 170

Run `revdepcheck::cloud_details(, "Hmisc")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/Hmisc/new/Hmisc.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Hmisc/DESCRIPTION’ ... OK
...
* checking for missing documentation entries ... OK
* checking for code/documentation mismatches ... OK
* checking Rd \usage sections ... OK
* checking Rd contents ... OK
* checking for unstated dependencies in examples ... OK
* checking line endings in C/C++/Fortran sources/headers ... OK
* checking compiled code ... OK
* checking examples ... OK
* DONE
Status: 4 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/Hmisc/old/Hmisc.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Hmisc/DESCRIPTION’ ... OK
...
* checking for missing documentation entries ... OK
* checking for code/documentation mismatches ... OK
* checking Rd \usage sections ... OK
* checking Rd contents ... OK
* checking for unstated dependencies in examples ... OK
* checking line endings in C/C++/Fortran sources/headers ... OK
* checking compiled code ... OK
* checking examples ... OK
* DONE
Status: 4 NOTEs





```
# iClusterVB

<details>

* Version: 0.1.2
* GitHub: https://github.com/AbdalkarimA/iClusterVB
* Source code: https://github.com/cran/iClusterVB
* Date/Publication: 2024-08-20 19:10:02 UTC
* Number of recursive dependencies: 127

Run `revdepcheck::cloud_details(, "iClusterVB")` for more info

</details>

## In both

*   checking whether package ‘iClusterVB’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/iClusterVB/new/iClusterVB.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘iClusterVB’ ...
** package ‘iClusterVB’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c CAVI_algorithms.cpp -o CAVI_algorithms.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o iClusterVB.so CAVI_algorithms.o RcppExports.o -fopenmp -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/iClusterVB/new/iClusterVB.Rcheck/00LOCK-iClusterVB/00new/iClusterVB/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘iClusterVB’
* removing ‘/tmp/workdir/iClusterVB/new/iClusterVB.Rcheck/iClusterVB’


```
### CRAN

```
* installing *source* package ‘iClusterVB’ ...
** package ‘iClusterVB’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c CAVI_algorithms.cpp -o CAVI_algorithms.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o iClusterVB.so CAVI_algorithms.o RcppExports.o -fopenmp -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/iClusterVB/old/iClusterVB.Rcheck/00LOCK-iClusterVB/00new/iClusterVB/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘iClusterVB’
* removing ‘/tmp/workdir/iClusterVB/old/iClusterVB.Rcheck/iClusterVB’


```
# iNZightPlots

<details>

* Version: 2.15.3
* GitHub: https://github.com/iNZightVIT/iNZightPlots
* Source code: https://github.com/cran/iNZightPlots
* Date/Publication: 2023-10-14 05:00:02 UTC
* Number of recursive dependencies: 162

Run `revdepcheck::cloud_details(, "iNZightPlots")` for more info

</details>

## In both

*   checking whether package ‘iNZightPlots’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/iNZightPlots/new/iNZightPlots.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘iNZightPlots’ ...
** package ‘iNZightPlots’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘iNZightPlots’
* removing ‘/tmp/workdir/iNZightPlots/new/iNZightPlots.Rcheck/iNZightPlots’


```
### CRAN

```
* installing *source* package ‘iNZightPlots’ ...
** package ‘iNZightPlots’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘iNZightPlots’
* removing ‘/tmp/workdir/iNZightPlots/old/iNZightPlots.Rcheck/iNZightPlots’


```
# IRexamples

<details>

* Version: 0.0.4
* GitHub: https://github.com/vinhdizzo/IRexamples
* Source code: https://github.com/cran/IRexamples
* Date/Publication: 2023-10-06 06:40:02 UTC
* Number of recursive dependencies: 177

Run `revdepcheck::cloud_details(, "IRexamples")` for more info

</details>

## In both

*   checking whether package ‘IRexamples’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/IRexamples/new/IRexamples.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘IRexamples’ ...
** package ‘IRexamples’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Warning in check_dep_version() :
  ABI version mismatch: 
lme4 was built with Matrix ABI version 1
Current Matrix ABI version is 0
Please re-install lme4 from source or restore original ‘Matrix’ package
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘IRexamples’
* removing ‘/tmp/workdir/IRexamples/new/IRexamples.Rcheck/IRexamples’


```
### CRAN

```
* installing *source* package ‘IRexamples’ ...
** package ‘IRexamples’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Warning in check_dep_version() :
  ABI version mismatch: 
lme4 was built with Matrix ABI version 1
Current Matrix ABI version is 0
Please re-install lme4 from source or restore original ‘Matrix’ package
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘IRexamples’
* removing ‘/tmp/workdir/IRexamples/old/IRexamples.Rcheck/IRexamples’


```
# isodistrreg

<details>

* Version: 0.1.0
* GitHub: https://github.com/AlexanderHenzi/isodistrreg
* Source code: https://github.com/cran/isodistrreg
* Date/Publication: 2021-03-22 09:20:03 UTC
* Number of recursive dependencies: 30

Run `revdepcheck::cloud_details(, "isodistrreg")` for more info

</details>

## In both

*   checking whether package ‘isodistrreg’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/isodistrreg/new/isodistrreg.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘isodistrreg’ ...
** package ‘isodistrreg’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c idrHazard.cpp -o idrHazard.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c isoCdf_sequential.cpp -o isoCdf_sequential.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c pavaMatrix.cpp -o pavaMatrix.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o isodistrreg.so RcppExports.o idrHazard.o isoCdf_sequential.o pavaMatrix.o -L/opt/R/4.3.1/lib/R/lib -lR
...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is being loaded, but >= 1.6.1 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘isodistrreg’
* removing ‘/tmp/workdir/isodistrreg/new/isodistrreg.Rcheck/isodistrreg’


```
### CRAN

```
* installing *source* package ‘isodistrreg’ ...
** package ‘isodistrreg’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c idrHazard.cpp -o idrHazard.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c isoCdf_sequential.cpp -o isoCdf_sequential.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c pavaMatrix.cpp -o pavaMatrix.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o isodistrreg.so RcppExports.o idrHazard.o isoCdf_sequential.o pavaMatrix.o -L/opt/R/4.3.1/lib/R/lib -lR
...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is being loaded, but >= 1.6.1 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘isodistrreg’
* removing ‘/tmp/workdir/isodistrreg/old/isodistrreg.Rcheck/isodistrreg’


```
# joineRML

<details>

* Version: 0.4.6
* GitHub: https://github.com/graemeleehickey/joineRML
* Source code: https://github.com/cran/joineRML
* Date/Publication: 2023-01-20 04:50:02 UTC
* Number of recursive dependencies: 91

Run `revdepcheck::cloud_details(, "joineRML")` for more info

</details>

## In both

*   checking whether package ‘joineRML’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/joineRML/new/joineRML.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘joineRML’ ...
** package ‘joineRML’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++11
g++ -std=gnu++11 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c expW.cpp -o expW.o
g++ -std=gnu++11 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c gammaUpdate.cpp -o gammaUpdate.o
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘joineRML’
* removing ‘/tmp/workdir/joineRML/new/joineRML.Rcheck/joineRML’


```
### CRAN

```
* installing *source* package ‘joineRML’ ...
** package ‘joineRML’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++11
g++ -std=gnu++11 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c expW.cpp -o expW.o
g++ -std=gnu++11 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c gammaUpdate.cpp -o gammaUpdate.o
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘joineRML’
* removing ‘/tmp/workdir/joineRML/old/joineRML.Rcheck/joineRML’


```
# kdml

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/kdml
* Date/Publication: 2024-08-27 11:30:05 UTC
* Number of recursive dependencies: 40

Run `revdepcheck::cloud_details(, "kdml")` for more info

</details>

## In both

*   checking whether package ‘kdml’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/kdml/new/kdml.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘kdml’ ...
** package ‘kdml’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘np’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘kdml’
* removing ‘/tmp/workdir/kdml/new/kdml.Rcheck/kdml’


```
### CRAN

```
* installing *source* package ‘kdml’ ...
** package ‘kdml’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘np’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘kdml’
* removing ‘/tmp/workdir/kdml/old/kdml.Rcheck/kdml’


```
# kibior

<details>

* Version: 0.1.1
* GitHub: https://github.com/regisoc/kibior
* Source code: https://github.com/cran/kibior
* Date/Publication: 2021-01-28 15:20:02 UTC
* Number of recursive dependencies: 140

Run `revdepcheck::cloud_details(, "kibior")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/kibior/new/kibior.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘kibior/DESCRIPTION’ ... OK
...
* this is package ‘kibior’ version ‘0.1.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘rtracklayer’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/kibior/old/kibior.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘kibior/DESCRIPTION’ ... OK
...
* this is package ‘kibior’ version ‘0.1.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘rtracklayer’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# kstMatrix

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/kstMatrix
* Number of recursive dependencies: 35

Run `revdepcheck::cloud_details(, "kstMatrix")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# L2E

<details>

* Version: 2.0
* GitHub: NA
* Source code: https://github.com/cran/L2E
* Date/Publication: 2022-09-08 21:13:00 UTC
* Number of recursive dependencies: 65

Run `revdepcheck::cloud_details(, "L2E")` for more info

</details>

## In both

*   checking whether package ‘L2E’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/L2E/new/L2E.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘L2E’ ...
** package ‘L2E’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘osqp’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is being loaded, but >= 1.6.1 is required
Execution halted
ERROR: lazy loading failed for package ‘L2E’
* removing ‘/tmp/workdir/L2E/new/L2E.Rcheck/L2E’


```
### CRAN

```
* installing *source* package ‘L2E’ ...
** package ‘L2E’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘osqp’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is being loaded, but >= 1.6.1 is required
Execution halted
ERROR: lazy loading failed for package ‘L2E’
* removing ‘/tmp/workdir/L2E/old/L2E.Rcheck/L2E’


```
# lchemix

<details>

* Version: 0.1.0
* GitHub: https://github.com/wzhang17/lchemix
* Source code: https://github.com/cran/lchemix
* Date/Publication: 2020-02-28 11:50:02 UTC
* Number of recursive dependencies: 37

Run `revdepcheck::cloud_details(, "lchemix")` for more info

</details>

## In both

*   checking whether package ‘lchemix’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/lchemix/new/lchemix.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘lchemix’ ...
** package ‘lchemix’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘lchemix’
* removing ‘/tmp/workdir/lchemix/new/lchemix.Rcheck/lchemix’


```
### CRAN

```
* installing *source* package ‘lchemix’ ...
** package ‘lchemix’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘lchemix’
* removing ‘/tmp/workdir/lchemix/old/lchemix.Rcheck/lchemix’


```
# ldsep

<details>

* Version: 2.1.5
* GitHub: https://github.com/dcgerard/ldsep
* Source code: https://github.com/cran/ldsep
* Date/Publication: 2022-10-18 22:52:43 UTC
* Number of recursive dependencies: 161

Run `revdepcheck::cloud_details(, "ldsep")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/ldsep/new/ldsep.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘ldsep/DESCRIPTION’ ... OK
...

  When sourcing ‘vcf.R’:
Error: there is no package called ‘VariantAnnotation’
Execution halted

  ‘fast.Rmd’ using ‘UTF-8’... OK
  ‘vcf.Rmd’ using ‘UTF-8’... failed
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 WARNING, 3 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/ldsep/old/ldsep.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘ldsep/DESCRIPTION’ ... OK
...

  When sourcing ‘vcf.R’:
Error: there is no package called ‘VariantAnnotation’
Execution halted

  ‘fast.Rmd’ using ‘UTF-8’... OK
  ‘vcf.Rmd’ using ‘UTF-8’... failed
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 WARNING, 3 NOTEs





```
# locuszoomr

<details>

* Version: 0.3.2
* GitHub: https://github.com/myles-lewis/locuszoomr
* Source code: https://github.com/cran/locuszoomr
* Date/Publication: 2024-08-19 15:10:02 UTC
* Number of recursive dependencies: 132

Run `revdepcheck::cloud_details(, "locuszoomr")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/locuszoomr/new/locuszoomr.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘locuszoomr/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'ensembldb', 'rtracklayer'

Package suggested but not available for checking: ‘EnsDb.Hsapiens.v75’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/locuszoomr/old/locuszoomr.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘locuszoomr/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'ensembldb', 'rtracklayer'

Package suggested but not available for checking: ‘EnsDb.Hsapiens.v75’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# loon.shiny

<details>

* Version: 1.0.3
* GitHub: NA
* Source code: https://github.com/cran/loon.shiny
* Date/Publication: 2022-10-08 15:30:02 UTC
* Number of recursive dependencies: 136

Run `revdepcheck::cloud_details(, "loon.shiny")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/loon.shiny/new/loon.shiny.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.shiny/DESCRIPTION’ ... OK
...
* this is package ‘loon.shiny’ version ‘1.0.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'loon', 'loon.ggplot'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/loon.shiny/old/loon.shiny.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.shiny/DESCRIPTION’ ... OK
...
* this is package ‘loon.shiny’ version ‘1.0.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'loon', 'loon.ggplot'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# loon.tourr

<details>

* Version: 0.1.4
* GitHub: https://github.com/z267xu/loon.tourr
* Source code: https://github.com/cran/loon.tourr
* Date/Publication: 2024-04-09 09:40:02 UTC
* Number of recursive dependencies: 127

Run `revdepcheck::cloud_details(, "loon.tourr")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/loon.tourr/new/loon.tourr.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.tourr/DESCRIPTION’ ... OK
...
* this is package ‘loon.tourr’ version ‘0.1.4’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'loon', 'loon.ggplot'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/loon.tourr/old/loon.tourr.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.tourr/DESCRIPTION’ ... OK
...
* this is package ‘loon.tourr’ version ‘0.1.4’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'loon', 'loon.ggplot'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# LorenzRegression

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/LorenzRegression
* Date/Publication: 2023-02-28 17:32:34 UTC
* Number of recursive dependencies: 63

Run `revdepcheck::cloud_details(, "LorenzRegression")` for more info

</details>

## In both

*   checking whether package ‘LorenzRegression’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/LorenzRegression/new/LorenzRegression.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘LorenzRegression’ ...
** package ‘LorenzRegression’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c GA_fitness.cpp -o GA_fitness.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c GA_meanrank.cpp -o GA_meanrank.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c PLR_derivative.cpp -o PLR_derivative.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c PLR_loss.cpp -o PLR_loss.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘LorenzRegression’
* removing ‘/tmp/workdir/LorenzRegression/new/LorenzRegression.Rcheck/LorenzRegression’


```
### CRAN

```
* installing *source* package ‘LorenzRegression’ ...
** package ‘LorenzRegression’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c GA_fitness.cpp -o GA_fitness.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c GA_meanrank.cpp -o GA_meanrank.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c PLR_derivative.cpp -o PLR_derivative.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c PLR_loss.cpp -o PLR_loss.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘LorenzRegression’
* removing ‘/tmp/workdir/LorenzRegression/old/LorenzRegression.Rcheck/LorenzRegression’


```
# lsirm12pl

<details>

* Version: 1.3.3
* GitHub: NA
* Source code: https://github.com/cran/lsirm12pl
* Date/Publication: 2024-08-28 23:00:02 UTC
* Number of recursive dependencies: 124

Run `revdepcheck::cloud_details(, "lsirm12pl")` for more info

</details>

## In both

*   checking whether package ‘lsirm12pl’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/lsirm12pl/new/lsirm12pl.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘lsirm12pl’ ...
** package ‘lsirm12pl’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c lsirm1pl.cpp -o lsirm1pl.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c lsirm2pl.cpp -o lsirm2pl.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c lsm.cpp -o lsm.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c utility_cpp.cpp -o utility_cpp.o
...
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘lsirm12pl’
* removing ‘/tmp/workdir/lsirm12pl/new/lsirm12pl.Rcheck/lsirm12pl’


```
### CRAN

```
* installing *source* package ‘lsirm12pl’ ...
** package ‘lsirm12pl’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c lsirm1pl.cpp -o lsirm1pl.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c lsirm2pl.cpp -o lsirm2pl.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c lsm.cpp -o lsm.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fopenmp -fpic  -g -O2  -c utility_cpp.cpp -o utility_cpp.o
...
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘lsirm12pl’
* removing ‘/tmp/workdir/lsirm12pl/old/lsirm12pl.Rcheck/lsirm12pl’


```
# MAAPER

<details>

* Version: 1.1.1
* GitHub: https://github.com/Vivianstats/MAAPER
* Source code: https://github.com/cran/MAAPER
* Date/Publication: 2021-08-14 14:20:05 UTC
* Number of recursive dependencies: 84

Run `revdepcheck::cloud_details(, "MAAPER")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/MAAPER/new/MAAPER.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘MAAPER/DESCRIPTION’ ... OK
...
* this is package ‘MAAPER’ version ‘1.1.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘GenomicFeatures’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/MAAPER/old/MAAPER.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘MAAPER/DESCRIPTION’ ... OK
...
* this is package ‘MAAPER’ version ‘1.1.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘GenomicFeatures’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# marlod

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/marlod
* Date/Publication: 2024-08-27 22:00:02 UTC
* Number of recursive dependencies: 107

Run `revdepcheck::cloud_details(, "marlod")` for more info

</details>

## In both

*   checking whether package ‘marlod’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/marlod/new/marlod.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘marlod’ ...
** package ‘marlod’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘marlod’
* removing ‘/tmp/workdir/marlod/new/marlod.Rcheck/marlod’


```
### CRAN

```
* installing *source* package ‘marlod’ ...
** package ‘marlod’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘marlod’
* removing ‘/tmp/workdir/marlod/old/marlod.Rcheck/marlod’


```
# MARVEL

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/MARVEL
* Date/Publication: 2022-10-31 10:22:50 UTC
* Number of recursive dependencies: 231

Run `revdepcheck::cloud_details(, "MARVEL")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/MARVEL/new/MARVEL.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘MARVEL/DESCRIPTION’ ... OK
...
* checking installed files from ‘inst/doc’ ... OK
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘MARVEL.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/MARVEL/old/MARVEL.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘MARVEL/DESCRIPTION’ ... OK
...
* checking installed files from ‘inst/doc’ ... OK
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘MARVEL.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
# MBmca

<details>

* Version: 1.0.1-3
* GitHub: https://github.com/PCRuniversum/MBmca
* Source code: https://github.com/cran/MBmca
* Date/Publication: 2021-09-03 12:40:08 UTC
* Number of recursive dependencies: 58

Run `revdepcheck::cloud_details(, "MBmca")` for more info

</details>

## In both

*   checking whether package ‘MBmca’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/MBmca/new/MBmca.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘MBmca’ ...
** package ‘MBmca’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘MBmca’
* removing ‘/tmp/workdir/MBmca/new/MBmca.Rcheck/MBmca’


```
### CRAN

```
* installing *source* package ‘MBmca’ ...
** package ‘MBmca’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘MBmca’
* removing ‘/tmp/workdir/MBmca/old/MBmca.Rcheck/MBmca’


```
# mbsts

<details>

* Version: 3.0
* GitHub: NA
* Source code: https://github.com/cran/mbsts
* Date/Publication: 2023-01-07 01:10:02 UTC
* Number of recursive dependencies: 82

Run `revdepcheck::cloud_details(, "mbsts")` for more info

</details>

## In both

*   checking whether package ‘mbsts’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/mbsts/new/mbsts.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘mbsts’ ...
** package ‘mbsts’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘mbsts’
* removing ‘/tmp/workdir/mbsts/new/mbsts.Rcheck/mbsts’


```
### CRAN

```
* installing *source* package ‘mbsts’ ...
** package ‘mbsts’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘mbsts’
* removing ‘/tmp/workdir/mbsts/old/mbsts.Rcheck/mbsts’


```
# Mega2R

<details>

* Version: 1.1.0
* GitHub: NA
* Source code: https://github.com/cran/Mega2R
* Date/Publication: 2023-12-21 22:40:10 UTC
* Number of recursive dependencies: 105

Run `revdepcheck::cloud_details(, "Mega2R")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/Mega2R/new/Mega2R.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Mega2R/DESCRIPTION’ ... OK
...
* checking installed files from ‘inst/doc’ ... OK
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘mega2rtutorial.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/Mega2R/old/Mega2R.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Mega2R/DESCRIPTION’ ... OK
...
* checking installed files from ‘inst/doc’ ... OK
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘mega2rtutorial.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
# metajam

<details>

* Version: 0.3.1
* GitHub: https://github.com/NCEAS/metajam
* Source code: https://github.com/cran/metajam
* Date/Publication: 2024-08-16 17:50:02 UTC
* Number of recursive dependencies: 91

Run `revdepcheck::cloud_details(, "metajam")` for more info

</details>

## In both

*   checking whether package ‘metajam’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/metajam/new/metajam.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘metajam’ ...
** package ‘metajam’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.3.1/lib/R/site-library/redland/libs/redland.so':
  librdf.so.0: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... namespaceImport -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘metajam’
* removing ‘/tmp/workdir/metajam/new/metajam.Rcheck/metajam’


```
### CRAN

```
* installing *source* package ‘metajam’ ...
** package ‘metajam’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.3.1/lib/R/site-library/redland/libs/redland.so':
  librdf.so.0: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... namespaceImport -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘metajam’
* removing ‘/tmp/workdir/metajam/old/metajam.Rcheck/metajam’


```
# mHMMbayes

<details>

* Version: 1.1.0
* GitHub: https://github.com/emmekeaarts/mHMMbayes
* Source code: https://github.com/cran/mHMMbayes
* Date/Publication: 2024-04-01 12:20:02 UTC
* Number of recursive dependencies: 64

Run `revdepcheck::cloud_details(, "mHMMbayes")` for more info

</details>

## In both

*   checking whether package ‘mHMMbayes’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/mHMMbayes/new/mHMMbayes.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘mHMMbayes’ ...
** package ‘mHMMbayes’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c cat_mult_fw_cpp.cpp -o cat_mult_fw_cpp.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o mHMMbayes.so RcppExports.o cat_mult_fw_cpp.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/mHMMbayes/new/mHMMbayes.Rcheck/00LOCK-mHMMbayes/00new/mHMMbayes/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘mHMMbayes’
* removing ‘/tmp/workdir/mHMMbayes/new/mHMMbayes.Rcheck/mHMMbayes’


```
### CRAN

```
* installing *source* package ‘mHMMbayes’ ...
** package ‘mHMMbayes’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c cat_mult_fw_cpp.cpp -o cat_mult_fw_cpp.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o mHMMbayes.so RcppExports.o cat_mult_fw_cpp.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/mHMMbayes/old/mHMMbayes.Rcheck/00LOCK-mHMMbayes/00new/mHMMbayes/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘mHMMbayes’
* removing ‘/tmp/workdir/mHMMbayes/old/mHMMbayes.Rcheck/mHMMbayes’


```
# MicroSEC

<details>

* Version: 2.1.6
* GitHub: https://github.com/MANO-B/MicroSEC
* Source code: https://github.com/cran/MicroSEC
* Date/Publication: 2024-08-25 07:50:05 UTC
* Number of recursive dependencies: 88

Run `revdepcheck::cloud_details(, "MicroSEC")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/MicroSEC/new/MicroSEC.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘MicroSEC/DESCRIPTION’ ... OK
...
there is no package called 'BSgenome.Hsapiens.UCSC.hg38'
--- failed re-building ‘my-vignette.Rmd’

SUMMARY: processing the following file failed:
  ‘my-vignette.Rmd’

Execution halted

* DONE
Status: 2 ERRORs, 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/MicroSEC/old/MicroSEC.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘MicroSEC/DESCRIPTION’ ... OK
...
there is no package called 'BSgenome.Hsapiens.UCSC.hg38'
--- failed re-building ‘my-vignette.Rmd’

SUMMARY: processing the following file failed:
  ‘my-vignette.Rmd’

Execution halted

* DONE
Status: 2 ERRORs, 2 NOTEs





```
# MiRKAT

<details>

* Version: 1.2.3
* GitHub: NA
* Source code: https://github.com/cran/MiRKAT
* Date/Publication: 2023-02-17 14:50:02 UTC
* Number of recursive dependencies: 114

Run `revdepcheck::cloud_details(, "MiRKAT")` for more info

</details>

## In both

*   checking whether package ‘MiRKAT’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/MiRKAT/new/MiRKAT.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘MiRKAT’ ...
** package ‘MiRKAT’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘MiRKAT’
* removing ‘/tmp/workdir/MiRKAT/new/MiRKAT.Rcheck/MiRKAT’


```
### CRAN

```
* installing *source* package ‘MiRKAT’ ...
** package ‘MiRKAT’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘MiRKAT’
* removing ‘/tmp/workdir/MiRKAT/old/MiRKAT.Rcheck/MiRKAT’


```
# MitoHEAR

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/MitoHEAR
* Date/Publication: 2022-03-01 21:20:02 UTC
* Number of recursive dependencies: 183

Run `revdepcheck::cloud_details(, "MitoHEAR")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/MitoHEAR/new/MitoHEAR.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘MitoHEAR/DESCRIPTION’ ... OK
...
* checking package dependencies ... ERROR
Package required but not available: ‘ComplexHeatmap’

Packages suggested but not available for checking:
  'karyoploteR', 'regioneR'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/MitoHEAR/old/MitoHEAR.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘MitoHEAR/DESCRIPTION’ ... OK
...
* checking package dependencies ... ERROR
Package required but not available: ‘ComplexHeatmap’

Packages suggested but not available for checking:
  'karyoploteR', 'regioneR'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# miWQS

<details>

* Version: 0.4.4
* GitHub: https://github.com/phargarten2/miWQS
* Source code: https://github.com/cran/miWQS
* Date/Publication: 2021-04-02 21:50:02 UTC
* Number of recursive dependencies: 152

Run `revdepcheck::cloud_details(, "miWQS")` for more info

</details>

## In both

*   checking whether package ‘miWQS’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/miWQS/new/miWQS.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘miWQS’ ...
** package ‘miWQS’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘miWQS’
* removing ‘/tmp/workdir/miWQS/new/miWQS.Rcheck/miWQS’


```
### CRAN

```
* installing *source* package ‘miWQS’ ...
** package ‘miWQS’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘miWQS’
* removing ‘/tmp/workdir/miWQS/old/miWQS.Rcheck/miWQS’


```
# MLML2R

<details>

* Version: 0.3.3
* GitHub: https://github.com/samarafk/MLML2R
* Source code: https://github.com/cran/MLML2R
* Date/Publication: 2019-10-17 19:30:02 UTC
* Number of recursive dependencies: 146

Run `revdepcheck::cloud_details(, "MLML2R")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/MLML2R/new/MLML2R.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘MLML2R/DESCRIPTION’ ... OK
...
* checking installed files from ‘inst/doc’ ... OK
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘vignette.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/MLML2R/old/MLML2R.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘MLML2R/DESCRIPTION’ ... OK
...
* checking installed files from ‘inst/doc’ ... OK
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘vignette.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
# mlt.docreg

<details>

* Version: 1.1-8
* GitHub: NA
* Source code: https://github.com/cran/mlt.docreg
* Date/Publication: 2024-04-29 13:40:02 UTC
* Number of recursive dependencies: 152

Run `revdepcheck::cloud_details(, "mlt.docreg")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/mlt.docreg/new/mlt.docreg.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘mlt.docreg/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘mlt’

Packages suggested but not available for checking: 'tram', 'rms'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/mlt.docreg/old/mlt.docreg.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘mlt.docreg/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘mlt’

Packages suggested but not available for checking: 'tram', 'rms'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# MOCHA

<details>

* Version: 1.1.0
* GitHub: NA
* Source code: https://github.com/cran/MOCHA
* Date/Publication: 2024-01-25 12:20:12 UTC
* Number of recursive dependencies: 249

Run `revdepcheck::cloud_details(, "MOCHA")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/MOCHA/new/MOCHA.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘MOCHA/DESCRIPTION’ ... OK
...

Packages suggested but not available for checking:
  'ArchR', 'motifmatchr', 'TxDb.Hsapiens.UCSC.hg38.refGene',
  'TxDb.Hsapiens.UCSC.hg19.knownGene', 'BSgenome.Hsapiens.UCSC.hg19',
  'chromVAR', 'rtracklayer'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/MOCHA/old/MOCHA.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘MOCHA/DESCRIPTION’ ... OK
...

Packages suggested but not available for checking:
  'ArchR', 'motifmatchr', 'TxDb.Hsapiens.UCSC.hg38.refGene',
  'TxDb.Hsapiens.UCSC.hg19.knownGene', 'BSgenome.Hsapiens.UCSC.hg19',
  'chromVAR', 'rtracklayer'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# modeLLtest

<details>

* Version: 1.0.4
* GitHub: https://github.com/ShanaScogin/modeLLtest
* Source code: https://github.com/cran/modeLLtest
* Date/Publication: 2022-05-05 23:20:17 UTC
* Number of recursive dependencies: 58

Run `revdepcheck::cloud_details(, "modeLLtest")` for more info

</details>

## In both

*   checking whether package ‘modeLLtest’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/modeLLtest/new/modeLLtest.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘modeLLtest’ ...
** package ‘modeLLtest’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++11
g++ -std=gnu++11 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c cvll_mr.cpp -o cvll_mr.o
g++ -std=gnu++11 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c cvll_ols.cpp -o cvll_ols.o
g++ -std=gnu++11 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c cvll_rlm_m.cpp -o cvll_rlm_m.o
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘modeLLtest’
* removing ‘/tmp/workdir/modeLLtest/new/modeLLtest.Rcheck/modeLLtest’


```
### CRAN

```
* installing *source* package ‘modeLLtest’ ...
** package ‘modeLLtest’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++11
g++ -std=gnu++11 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c cvll_mr.cpp -o cvll_mr.o
g++ -std=gnu++11 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c cvll_ols.cpp -o cvll_ols.o
g++ -std=gnu++11 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c cvll_rlm_m.cpp -o cvll_rlm_m.o
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘modeLLtest’
* removing ‘/tmp/workdir/modeLLtest/old/modeLLtest.Rcheck/modeLLtest’


```
# MRZero

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/MRZero
* Date/Publication: 2024-04-14 09:30:03 UTC
* Number of recursive dependencies: 82

Run `revdepcheck::cloud_details(, "MRZero")` for more info

</details>

## In both

*   checking whether package ‘MRZero’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/MRZero/new/MRZero.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘MRZero’ ...
** package ‘MRZero’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘MRZero’
* removing ‘/tmp/workdir/MRZero/new/MRZero.Rcheck/MRZero’


```
### CRAN

```
* installing *source* package ‘MRZero’ ...
** package ‘MRZero’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘MRZero’
* removing ‘/tmp/workdir/MRZero/old/MRZero.Rcheck/MRZero’


```
# MultiKink

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/MultiKink
* Date/Publication: 2023-11-05 18:00:06 UTC
* Number of recursive dependencies: 38

Run `revdepcheck::cloud_details(, "MultiKink")` for more info

</details>

## In both

*   checking whether package ‘MultiKink’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/MultiKink/new/MultiKink.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘MultiKink’ ...
** package ‘MultiKink’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘MultiKink’
* removing ‘/tmp/workdir/MultiKink/new/MultiKink.Rcheck/MultiKink’


```
### CRAN

```
* installing *source* package ‘MultiKink’ ...
** package ‘MultiKink’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘MultiKink’
* removing ‘/tmp/workdir/MultiKink/old/MultiKink.Rcheck/MultiKink’


```
# multilevelTools

<details>

* Version: 0.1.1
* GitHub: https://github.com/JWiley/multilevelTools
* Source code: https://github.com/cran/multilevelTools
* Date/Publication: 2020-03-04 09:50:02 UTC
* Number of recursive dependencies: 168

Run `revdepcheck::cloud_details(, "multilevelTools")` for more info

</details>

## In both

*   checking whether package ‘multilevelTools’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/multilevelTools/new/multilevelTools.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘multilevelTools’ ...
** package ‘multilevelTools’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Warning in check_dep_version() :
  ABI version mismatch: 
lme4 was built with Matrix ABI version 1
Current Matrix ABI version is 0
Please re-install lme4 from source or restore original ‘Matrix’ package
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘multilevelTools’
* removing ‘/tmp/workdir/multilevelTools/new/multilevelTools.Rcheck/multilevelTools’


```
### CRAN

```
* installing *source* package ‘multilevelTools’ ...
** package ‘multilevelTools’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Warning in check_dep_version() :
  ABI version mismatch: 
lme4 was built with Matrix ABI version 1
Current Matrix ABI version is 0
Please re-install lme4 from source or restore original ‘Matrix’ package
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘multilevelTools’
* removing ‘/tmp/workdir/multilevelTools/old/multilevelTools.Rcheck/multilevelTools’


```
# multinma

<details>

* Version: 0.7.1
* GitHub: https://github.com/dmphillippo/multinma
* Source code: https://github.com/cran/multinma
* Date/Publication: 2024-06-11 12:20:06 UTC
* Number of recursive dependencies: 152

Run `revdepcheck::cloud_details(, "multinma")` for more info

</details>

## In both

*   checking whether package ‘multinma’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/multinma/new/multinma.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘multinma’ ...
** package ‘multinma’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/opt/R/4.3.1/lib/R/site-library/BH/include' -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppParallel/include' -I'/opt/R/4.3.1/lib/R/site-library/rstan/include' -I'/opt/R/4.3.1/lib/R/site-library/StanHeaders/include' -I/usr/local/include    -I'/opt/R/4.3.1/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
...
/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_survival_param_namespace::model_survival_param; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:21:10:   required from here
/opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:654:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  654 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.3.1/lib/R/etc/Makeconf:198: stanExports_survival_param.o] Error 1
ERROR: compilation failed for package ‘multinma’
* removing ‘/tmp/workdir/multinma/new/multinma.Rcheck/multinma’


```
### CRAN

```
* installing *source* package ‘multinma’ ...
** package ‘multinma’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/opt/R/4.3.1/lib/R/site-library/BH/include' -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppParallel/include' -I'/opt/R/4.3.1/lib/R/site-library/rstan/include' -I'/opt/R/4.3.1/lib/R/site-library/StanHeaders/include' -I/usr/local/include    -I'/opt/R/4.3.1/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
...
/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_survival_param_namespace::model_survival_param; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:21:10:   required from here
/opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:654:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  654 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.3.1/lib/R/etc/Makeconf:198: stanExports_survival_param.o] Error 1
ERROR: compilation failed for package ‘multinma’
* removing ‘/tmp/workdir/multinma/old/multinma.Rcheck/multinma’


```
# mvDFA

<details>

* Version: 0.0.4
* GitHub: https://github.com/jpirmer/mvDFA
* Source code: https://github.com/cran/mvDFA
* Date/Publication: 2023-06-15 17:40:02 UTC
* Number of recursive dependencies: 44

Run `revdepcheck::cloud_details(, "mvDFA")` for more info

</details>

## In both

*   checking whether package ‘mvDFA’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/mvDFA/new/mvDFA.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘mvDFA’ ...
** package ‘mvDFA’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘mvDFA’
* removing ‘/tmp/workdir/mvDFA/new/mvDFA.Rcheck/mvDFA’


```
### CRAN

```
* installing *source* package ‘mvDFA’ ...
** package ‘mvDFA’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘mvDFA’
* removing ‘/tmp/workdir/mvDFA/old/mvDFA.Rcheck/mvDFA’


```
# MXM

<details>

* Version: 1.5.5
* GitHub: NA
* Source code: https://github.com/cran/MXM
* Date/Publication: 2022-08-25 08:52:40 UTC
* Number of recursive dependencies: 116

Run `revdepcheck::cloud_details(, "MXM")` for more info

</details>

## In both

*   checking whether package ‘MXM’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/MXM/new/MXM.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘MXM’ ...
** package ‘MXM’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘MXM’
* removing ‘/tmp/workdir/MXM/new/MXM.Rcheck/MXM’


```
### CRAN

```
* installing *source* package ‘MXM’ ...
** package ‘MXM’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘MXM’
* removing ‘/tmp/workdir/MXM/old/MXM.Rcheck/MXM’


```
# nebula

<details>

* Version: 1.5.3
* GitHub: https://github.com/lhe17/nebula
* Source code: https://github.com/cran/nebula
* Date/Publication: 2024-02-15 23:00:02 UTC
* Number of recursive dependencies: 173

Run `revdepcheck::cloud_details(, "nebula")` for more info

</details>

## In both

*   checking whether package ‘nebula’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/nebula/new/nebula.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘nebula’ ...
** package ‘nebula’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:28,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘nebula’
* removing ‘/tmp/workdir/nebula/new/nebula.Rcheck/nebula’


```
### CRAN

```
* installing *source* package ‘nebula’ ...
** package ‘nebula’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:28,
                 from /opt/R/4.3.1/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘nebula’
* removing ‘/tmp/workdir/nebula/old/nebula.Rcheck/nebula’


```
# NetworkChange

<details>

* Version: 0.8
* GitHub: https://github.com/jongheepark/NetworkChange
* Source code: https://github.com/cran/NetworkChange
* Date/Publication: 2022-03-04 07:30:02 UTC
* Number of recursive dependencies: 133

Run `revdepcheck::cloud_details(, "NetworkChange")` for more info

</details>

## In both

*   checking whether package ‘NetworkChange’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/NetworkChange/new/NetworkChange.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘NetworkChange’ ...
** package ‘NetworkChange’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘MCMCpack’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘NetworkChange’
* removing ‘/tmp/workdir/NetworkChange/new/NetworkChange.Rcheck/NetworkChange’


```
### CRAN

```
* installing *source* package ‘NetworkChange’ ...
** package ‘NetworkChange’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘MCMCpack’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘NetworkChange’
* removing ‘/tmp/workdir/NetworkChange/old/NetworkChange.Rcheck/NetworkChange’


```
# newIMVC

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/newIMVC
* Date/Publication: 2024-04-16 14:50:13 UTC
* Number of recursive dependencies: 61

Run `revdepcheck::cloud_details(, "newIMVC")` for more info

</details>

## In both

*   checking whether package ‘newIMVC’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/newIMVC/new/newIMVC.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘newIMVC’ ...
** package ‘newIMVC’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘newIMVC’
* removing ‘/tmp/workdir/newIMVC/new/newIMVC.Rcheck/newIMVC’


```
### CRAN

```
* installing *source* package ‘newIMVC’ ...
** package ‘newIMVC’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘newIMVC’
* removing ‘/tmp/workdir/newIMVC/old/newIMVC.Rcheck/newIMVC’


```
# nlpred

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/nlpred
* Date/Publication: 2020-02-23 17:30:05 UTC
* Number of recursive dependencies: 104

Run `revdepcheck::cloud_details(, "nlpred")` for more info

</details>

## In both

*   checking whether package ‘nlpred’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/nlpred/new/nlpred.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘nlpred’ ...
** package ‘nlpred’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘nlpred’
* removing ‘/tmp/workdir/nlpred/new/nlpred.Rcheck/nlpred’


```
### CRAN

```
* installing *source* package ‘nlpred’ ...
** package ‘nlpred’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘nlpred’
* removing ‘/tmp/workdir/nlpred/old/nlpred.Rcheck/nlpred’


```
# noncomplyR

<details>

* Version: 1.0
* GitHub: NA
* Source code: https://github.com/cran/noncomplyR
* Date/Publication: 2017-08-24 08:30:38 UTC
* Number of recursive dependencies: 15

Run `revdepcheck::cloud_details(, "noncomplyR")` for more info

</details>

## In both

*   checking whether package ‘noncomplyR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/noncomplyR/new/noncomplyR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘noncomplyR’ ...
** package ‘noncomplyR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘noncomplyR’
* removing ‘/tmp/workdir/noncomplyR/new/noncomplyR.Rcheck/noncomplyR’


```
### CRAN

```
* installing *source* package ‘noncomplyR’ ...
** package ‘noncomplyR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘noncomplyR’
* removing ‘/tmp/workdir/noncomplyR/old/noncomplyR.Rcheck/noncomplyR’


```
# ohun

<details>

* Version: 1.0.2
* GitHub: https://github.com/ropensci/ohun
* Source code: https://github.com/cran/ohun
* Date/Publication: 2024-08-19 18:40:02 UTC
* Number of recursive dependencies: 100

Run `revdepcheck::cloud_details(, "ohun")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/ohun/new/ohun.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘ohun/DESCRIPTION’ ... OK
...
* this is package ‘ohun’ version ‘1.0.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘warbleR’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/ohun/old/ohun.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘ohun/DESCRIPTION’ ... OK
...
* this is package ‘ohun’ version ‘1.0.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘warbleR’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# oncoPredict

<details>

* Version: 1.2
* GitHub: https://github.com/HuangLabUMN/oncoPredict
* Source code: https://github.com/cran/oncoPredict
* Date/Publication: 2024-04-05 07:53:00 UTC
* Number of recursive dependencies: 208

Run `revdepcheck::cloud_details(, "oncoPredict")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/oncoPredict/new/oncoPredict.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘oncoPredict/DESCRIPTION’ ... OK
...
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available:
  'GenomicFeatures', 'TxDb.Hsapiens.UCSC.hg19.knownGene'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/oncoPredict/old/oncoPredict.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘oncoPredict/DESCRIPTION’ ... OK
...
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available:
  'GenomicFeatures', 'TxDb.Hsapiens.UCSC.hg19.knownGene'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# ontologics

<details>

* Version: 0.7.0
* GitHub: https://github.com/luckinet/ontologics
* Source code: https://github.com/cran/ontologics
* Date/Publication: 2023-05-10 09:20:05 UTC
* Number of recursive dependencies: 80

Run `revdepcheck::cloud_details(, "ontologics")` for more info

</details>

## In both

*   checking whether package ‘ontologics’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/ontologics/new/ontologics.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘ontologics’ ...
** package ‘ontologics’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.3.1/lib/R/site-library/redland/libs/redland.so':
  librdf.so.0: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... asNamespace -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘ontologics’
* removing ‘/tmp/workdir/ontologics/new/ontologics.Rcheck/ontologics’


```
### CRAN

```
* installing *source* package ‘ontologics’ ...
** package ‘ontologics’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.3.1/lib/R/site-library/redland/libs/redland.so':
  librdf.so.0: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... asNamespace -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘ontologics’
* removing ‘/tmp/workdir/ontologics/old/ontologics.Rcheck/ontologics’


```
# OVtool

<details>

* Version: 1.0.3
* GitHub: NA
* Source code: https://github.com/cran/OVtool
* Date/Publication: 2021-11-02 08:10:07 UTC
* Number of recursive dependencies: 157

Run `revdepcheck::cloud_details(, "OVtool")` for more info

</details>

## In both

*   checking whether package ‘OVtool’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/OVtool/new/OVtool.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘OVtool’ ...
** package ‘OVtool’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘twang’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘OVtool’
* removing ‘/tmp/workdir/OVtool/new/OVtool.Rcheck/OVtool’


```
### CRAN

```
* installing *source* package ‘OVtool’ ...
** package ‘OVtool’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘twang’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘OVtool’
* removing ‘/tmp/workdir/OVtool/old/OVtool.Rcheck/OVtool’


```
# pagoda2

<details>

* Version: 1.0.12
* GitHub: https://github.com/kharchenkolab/pagoda2
* Source code: https://github.com/cran/pagoda2
* Date/Publication: 2024-02-27 00:50:02 UTC
* Number of recursive dependencies: 162

Run `revdepcheck::cloud_details(, "pagoda2")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/pagoda2/new/pagoda2.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘pagoda2/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘rjson’

Package suggested but not available for checking: ‘scde’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/pagoda2/old/pagoda2.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘pagoda2/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘rjson’

Package suggested but not available for checking: ‘scde’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# PAMpal

<details>

* Version: 1.2.1
* GitHub: NA
* Source code: https://github.com/cran/PAMpal
* Date/Publication: 2024-07-11 22:50:02 UTC
* Number of recursive dependencies: 118

Run `revdepcheck::cloud_details(, "PAMpal")` for more info

</details>

## In both

*   checking whether package ‘PAMpal’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/PAMpal/new/PAMpal.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘PAMpal’ ...
** package ‘PAMpal’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘rjson’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘PAMpal’
* removing ‘/tmp/workdir/PAMpal/new/PAMpal.Rcheck/PAMpal’


```
### CRAN

```
* installing *source* package ‘PAMpal’ ...
** package ‘PAMpal’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘rjson’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘PAMpal’
* removing ‘/tmp/workdir/PAMpal/old/PAMpal.Rcheck/PAMpal’


```
# paths

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/paths
* Date/Publication: 2021-06-18 08:40:02 UTC
* Number of recursive dependencies: 102

Run `revdepcheck::cloud_details(, "paths")` for more info

</details>

## In both

*   checking whether package ‘paths’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/paths/new/paths.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘paths’ ...
** package ‘paths’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘paths’
* removing ‘/tmp/workdir/paths/new/paths.Rcheck/paths’


```
### CRAN

```
* installing *source* package ‘paths’ ...
** package ‘paths’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘paths’
* removing ‘/tmp/workdir/paths/old/paths.Rcheck/paths’


```
# PathwaySpace

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/PathwaySpace
* Number of recursive dependencies: 70

Run `revdepcheck::cloud_details(, "PathwaySpace")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# pencal

<details>

* Version: 2.2.2
* GitHub: NA
* Source code: https://github.com/cran/pencal
* Date/Publication: 2024-06-12 11:10:02 UTC
* Number of recursive dependencies: 172

Run `revdepcheck::cloud_details(, "pencal")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/pencal/new/pencal.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘pencal/DESCRIPTION’ ... OK
...
--- failed re-building ‘vignette.Rnw’

SUMMARY: processing the following file failed:
  ‘vignette.Rnw’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 1 WARNING, 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/pencal/old/pencal.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘pencal/DESCRIPTION’ ... OK
...
--- failed re-building ‘vignette.Rnw’

SUMMARY: processing the following file failed:
  ‘vignette.Rnw’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 1 WARNING, 1 NOTE





```
# pez

<details>

* Version: 1.2-4
* GitHub: NA
* Source code: https://github.com/cran/pez
* Date/Publication: 2022-08-31 18:00:02 UTC
* Number of recursive dependencies: 71

Run `revdepcheck::cloud_details(, "pez")` for more info

</details>

## In both

*   checking whether package ‘pez’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/pez/new/pez.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘pez’ ...
** package ‘pez’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘pez’
* removing ‘/tmp/workdir/pez/new/pez.Rcheck/pez’


```
### CRAN

```
* installing *source* package ‘pez’ ...
** package ‘pez’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘pez’
* removing ‘/tmp/workdir/pez/old/pez.Rcheck/pez’


```
# piecewiseSEM

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/piecewiseSEM
* Number of recursive dependencies: 108

Run `revdepcheck::cloud_details(, "piecewiseSEM")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# polyRAD

<details>

* Version: 2.0.0
* GitHub: https://github.com/lvclark/polyRAD
* Source code: https://github.com/cran/polyRAD
* Date/Publication: 2022-11-06 21:50:02 UTC
* Number of recursive dependencies: 135

Run `revdepcheck::cloud_details(, "polyRAD")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/polyRAD/new/polyRAD.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘polyRAD/DESCRIPTION’ ... OK
...

  When sourcing ‘polyRADtutorial.R’:
Error: Probabilities must be finite and non-negative!
Execution halted

  ‘isolocus_sorting.Rmd’ using ‘UTF-8’... OK
  ‘polyRADtutorial.Rmd’ using ‘UTF-8’... failed
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 ERROR, 3 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/polyRAD/old/polyRAD.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘polyRAD/DESCRIPTION’ ... OK
...

  When sourcing ‘polyRADtutorial.R’:
Error: Probabilities must be finite and non-negative!
Execution halted

  ‘isolocus_sorting.Rmd’ using ‘UTF-8’... OK
  ‘polyRADtutorial.Rmd’ using ‘UTF-8’... failed
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 ERROR, 3 NOTEs





```
# pould

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/pould
* Date/Publication: 2020-10-16 13:50:03 UTC
* Number of recursive dependencies: 104

Run `revdepcheck::cloud_details(, "pould")` for more info

</details>

## In both

*   checking whether package ‘pould’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/pould/new/pould.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘pould’ ...
** package ‘pould’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘rms’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘pould’
* removing ‘/tmp/workdir/pould/new/pould.Rcheck/pould’


```
### CRAN

```
* installing *source* package ‘pould’ ...
** package ‘pould’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘rms’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘pould’
* removing ‘/tmp/workdir/pould/old/pould.Rcheck/pould’


```
# pre

<details>

* Version: 1.0.7
* GitHub: https://github.com/marjoleinF/pre
* Source code: https://github.com/cran/pre
* Date/Publication: 2024-01-12 19:30:02 UTC
* Number of recursive dependencies: 151

Run `revdepcheck::cloud_details(, "pre")` for more info

</details>

## In both

*   checking whether package ‘pre’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/pre/new/pre.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘pre’ ...
** package ‘pre’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘pre’
* removing ‘/tmp/workdir/pre/new/pre.Rcheck/pre’


```
### CRAN

```
* installing *source* package ‘pre’ ...
** package ‘pre’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘pre’
* removing ‘/tmp/workdir/pre/old/pre.Rcheck/pre’


```
# ProFAST

<details>

* Version: 1.4
* GitHub: https://github.com/feiyoung/ProFAST
* Source code: https://github.com/cran/ProFAST
* Date/Publication: 2024-03-18 08:10:06 UTC
* Number of recursive dependencies: 245

Run `revdepcheck::cloud_details(, "ProFAST")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/ProFAST/new/ProFAST.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘ProFAST/DESCRIPTION’ ... OK
...
* this is package ‘ProFAST’ version ‘1.4’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'DR.SC', 'PRECAST'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/ProFAST/old/ProFAST.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘ProFAST/DESCRIPTION’ ... OK
...
* this is package ‘ProFAST’ version ‘1.4’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'DR.SC', 'PRECAST'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# PRSPGx

<details>

* Version: 0.3.0
* GitHub: NA
* Source code: https://github.com/cran/PRSPGx
* Date/Publication: 2022-07-20 15:00:02 UTC
* Number of recursive dependencies: 109

Run `revdepcheck::cloud_details(, "PRSPGx")` for more info

</details>

## In both

*   checking whether package ‘PRSPGx’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/PRSPGx/new/PRSPGx.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘PRSPGx’ ...
** package ‘PRSPGx’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘PRSPGx’
* removing ‘/tmp/workdir/PRSPGx/new/PRSPGx.Rcheck/PRSPGx’


```
### CRAN

```
* installing *source* package ‘PRSPGx’ ...
** package ‘PRSPGx’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘PRSPGx’
* removing ‘/tmp/workdir/PRSPGx/old/PRSPGx.Rcheck/PRSPGx’


```
# psbcSpeedUp

<details>

* Version: 2.0.7
* GitHub: https://github.com/ocbe-uio/psbcSpeedUp
* Source code: https://github.com/cran/psbcSpeedUp
* Date/Publication: 2024-07-01 09:00:02 UTC
* Number of recursive dependencies: 130

Run `revdepcheck::cloud_details(, "psbcSpeedUp")` for more info

</details>

## In both

*   checking whether package ‘psbcSpeedUp’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/psbcSpeedUp/new/psbcSpeedUp.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘psbcSpeedUp’ ...
** package ‘psbcSpeedUp’ successfully unpacked and MD5 sums checked
** using staged installation
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether the compiler supports GNU C++... yes
checking whether g++ -std=gnu++17 accepts -g... yes
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘rms’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘psbcSpeedUp’
* removing ‘/tmp/workdir/psbcSpeedUp/new/psbcSpeedUp.Rcheck/psbcSpeedUp’


```
### CRAN

```
* installing *source* package ‘psbcSpeedUp’ ...
** package ‘psbcSpeedUp’ successfully unpacked and MD5 sums checked
** using staged installation
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether the compiler supports GNU C++... yes
checking whether g++ -std=gnu++17 accepts -g... yes
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘rms’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘psbcSpeedUp’
* removing ‘/tmp/workdir/psbcSpeedUp/old/psbcSpeedUp.Rcheck/psbcSpeedUp’


```
# pscore

<details>

* Version: 0.4.0
* GitHub: https://github.com/JWiley/score-project
* Source code: https://github.com/cran/pscore
* Date/Publication: 2022-05-13 22:30:02 UTC
* Number of recursive dependencies: 169

Run `revdepcheck::cloud_details(, "pscore")` for more info

</details>

## In both

*   checking whether package ‘pscore’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/pscore/new/pscore.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘pscore’ ...
** package ‘pscore’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Warning in check_dep_version() :
  ABI version mismatch: 
lme4 was built with Matrix ABI version 1
Current Matrix ABI version is 0
Please re-install lme4 from source or restore original ‘Matrix’ package
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘pscore’
* removing ‘/tmp/workdir/pscore/new/pscore.Rcheck/pscore’


```
### CRAN

```
* installing *source* package ‘pscore’ ...
** package ‘pscore’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Warning in check_dep_version() :
  ABI version mismatch: 
lme4 was built with Matrix ABI version 1
Current Matrix ABI version is 0
Please re-install lme4 from source or restore original ‘Matrix’ package
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘pscore’
* removing ‘/tmp/workdir/pscore/old/pscore.Rcheck/pscore’


```
# pssmooth

<details>

* Version: 1.0.3
* GitHub: https://github.com/mjuraska/pssmooth
* Source code: https://github.com/cran/pssmooth
* Date/Publication: 2020-11-18 13:20:03 UTC
* Number of recursive dependencies: 47

Run `revdepcheck::cloud_details(, "pssmooth")` for more info

</details>

## In both

*   checking whether package ‘pssmooth’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/pssmooth/new/pssmooth.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘pssmooth’ ...
** package ‘pssmooth’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Warning in check_dep_version() :
  ABI version mismatch: 
lme4 was built with Matrix ABI version 1
Current Matrix ABI version is 0
Please re-install lme4 from source or restore original ‘Matrix’ package
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘pssmooth’
* removing ‘/tmp/workdir/pssmooth/new/pssmooth.Rcheck/pssmooth’


```
### CRAN

```
* installing *source* package ‘pssmooth’ ...
** package ‘pssmooth’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Warning in check_dep_version() :
  ABI version mismatch: 
lme4 was built with Matrix ABI version 1
Current Matrix ABI version is 0
Please re-install lme4 from source or restore original ‘Matrix’ package
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘pssmooth’
* removing ‘/tmp/workdir/pssmooth/old/pssmooth.Rcheck/pssmooth’


```
# ptmixed

<details>

* Version: 1.1.3
* GitHub: NA
* Source code: https://github.com/cran/ptmixed
* Date/Publication: 2022-08-18 12:00:02 UTC
* Number of recursive dependencies: 55

Run `revdepcheck::cloud_details(, "ptmixed")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/ptmixed/new/ptmixed.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘ptmixed/DESCRIPTION’ ... OK
...
* this is package ‘ptmixed’ version ‘1.1.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘tweeDEseq’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/ptmixed/old/ptmixed.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘ptmixed/DESCRIPTION’ ... OK
...
* this is package ‘ptmixed’ version ‘1.1.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘tweeDEseq’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# qte

<details>

* Version: 1.3.1
* GitHub: NA
* Source code: https://github.com/cran/qte
* Date/Publication: 2022-09-01 14:30:02 UTC
* Number of recursive dependencies: 87

Run `revdepcheck::cloud_details(, "qte")` for more info

</details>

## In both

*   checking whether package ‘qte’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/qte/new/qte.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘qte’ ...
** package ‘qte’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘qte’
* removing ‘/tmp/workdir/qte/new/qte.Rcheck/qte’


```
### CRAN

```
* installing *source* package ‘qte’ ...
** package ‘qte’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘qte’
* removing ‘/tmp/workdir/qte/old/qte.Rcheck/qte’


```
# Qtools

<details>

* Version: 1.5.9
* GitHub: NA
* Source code: https://github.com/cran/Qtools
* Date/Publication: 2023-10-28 15:10:02 UTC
* Number of recursive dependencies: 103

Run `revdepcheck::cloud_details(, "Qtools")` for more info

</details>

## In both

*   checking whether package ‘Qtools’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/Qtools/new/Qtools.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘Qtools’ ...
** package ‘Qtools’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c Qtools.cpp -o Qtools.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o Qtools.so Qtools.o RcppExports.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/Qtools/new/Qtools.Rcheck/00LOCK-Qtools/00new/Qtools/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘Qtools’
* removing ‘/tmp/workdir/Qtools/new/Qtools.Rcheck/Qtools’


```
### CRAN

```
* installing *source* package ‘Qtools’ ...
** package ‘Qtools’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c Qtools.cpp -o Qtools.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o Qtools.so Qtools.o RcppExports.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/Qtools/old/Qtools.Rcheck/00LOCK-Qtools/00new/Qtools/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘Qtools’
* removing ‘/tmp/workdir/Qtools/old/Qtools.Rcheck/Qtools’


```
# QuantileGH

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/QuantileGH
* Number of recursive dependencies: 98

Run `revdepcheck::cloud_details(, "QuantileGH")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# quantilogram

<details>

* Version: 3.1.1
* GitHub: NA
* Source code: https://github.com/cran/quantilogram
* Date/Publication: 2024-08-27 12:40:02 UTC
* Number of recursive dependencies: 58

Run `revdepcheck::cloud_details(, "quantilogram")` for more info

</details>

## In both

*   checking whether package ‘quantilogram’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/quantilogram/new/quantilogram.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘quantilogram’ ...
** package ‘quantilogram’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘quantilogram’
* removing ‘/tmp/workdir/quantilogram/new/quantilogram.Rcheck/quantilogram’


```
### CRAN

```
* installing *source* package ‘quantilogram’ ...
** package ‘quantilogram’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘quantilogram’
* removing ‘/tmp/workdir/quantilogram/old/quantilogram.Rcheck/quantilogram’


```
# quantregGrowth

<details>

* Version: 1.7-1
* GitHub: NA
* Source code: https://github.com/cran/quantregGrowth
* Date/Publication: 2024-05-20 09:10:02 UTC
* Number of recursive dependencies: 37

Run `revdepcheck::cloud_details(, "quantregGrowth")` for more info

</details>

## In both

*   checking whether package ‘quantregGrowth’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/quantregGrowth/new/quantregGrowth.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘quantregGrowth’ ...
** package ‘quantregGrowth’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘quantreg’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘quantregGrowth’
* removing ‘/tmp/workdir/quantregGrowth/new/quantregGrowth.Rcheck/quantregGrowth’


```
### CRAN

```
* installing *source* package ‘quantregGrowth’ ...
** package ‘quantregGrowth’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘quantreg’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘quantregGrowth’
* removing ‘/tmp/workdir/quantregGrowth/old/quantregGrowth.Rcheck/quantregGrowth’


```
# quid

<details>

* Version: 0.0.1
* GitHub: NA
* Source code: https://github.com/cran/quid
* Date/Publication: 2021-12-09 09:00:02 UTC
* Number of recursive dependencies: 95

Run `revdepcheck::cloud_details(, "quid")` for more info

</details>

## In both

*   checking whether package ‘quid’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/quid/new/quid.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘quid’ ...
** package ‘quid’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘quid’
* removing ‘/tmp/workdir/quid/new/quid.Rcheck/quid’


```
### CRAN

```
* installing *source* package ‘quid’ ...
** package ‘quid’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘quid’
* removing ‘/tmp/workdir/quid/old/quid.Rcheck/quid’


```
# RATest

<details>

* Version: 0.1.10
* GitHub: https://github.com/ignaciomsarmiento/RATest
* Source code: https://github.com/cran/RATest
* Date/Publication: 2022-09-29 04:30:02 UTC
* Number of recursive dependencies: 54

Run `revdepcheck::cloud_details(, "RATest")` for more info

</details>

## In both

*   checking whether package ‘RATest’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/RATest/new/RATest.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘RATest’ ...
** package ‘RATest’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘RATest’
* removing ‘/tmp/workdir/RATest/new/RATest.Rcheck/RATest’


```
### CRAN

```
* installing *source* package ‘RATest’ ...
** package ‘RATest’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘RATest’
* removing ‘/tmp/workdir/RATest/old/RATest.Rcheck/RATest’


```
# rddtools

<details>

* Version: 1.6.0
* GitHub: https://github.com/bquast/rddtools
* Source code: https://github.com/cran/rddtools
* Date/Publication: 2022-01-10 12:42:49 UTC
* Number of recursive dependencies: 106

Run `revdepcheck::cloud_details(, "rddtools")` for more info

</details>

## In both

*   checking whether package ‘rddtools’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/rddtools/new/rddtools.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘rddtools’ ...
** package ‘rddtools’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘np’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘rddtools’
* removing ‘/tmp/workdir/rddtools/new/rddtools.Rcheck/rddtools’


```
### CRAN

```
* installing *source* package ‘rddtools’ ...
** package ‘rddtools’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘np’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘rddtools’
* removing ‘/tmp/workdir/rddtools/old/rddtools.Rcheck/rddtools’


```
# rdflib

<details>

* Version: 0.2.9
* GitHub: https://github.com/ropensci/rdflib
* Source code: https://github.com/cran/rdflib
* Date/Publication: 2024-08-17 06:00:05 UTC
* Number of recursive dependencies: 94

Run `revdepcheck::cloud_details(, "rdflib")` for more info

</details>

## In both

*   checking whether package ‘rdflib’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/rdflib/new/rdflib.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘rdflib’ ...
** package ‘rdflib’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.3.1/lib/R/site-library/redland/libs/redland.so':
  librdf.so.0: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... asNamespace -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘rdflib’
* removing ‘/tmp/workdir/rdflib/new/rdflib.Rcheck/rdflib’


```
### CRAN

```
* installing *source* package ‘rdflib’ ...
** package ‘rdflib’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.3.1/lib/R/site-library/redland/libs/redland.so':
  librdf.so.0: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... asNamespace -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘rdflib’
* removing ‘/tmp/workdir/rdflib/old/rdflib.Rcheck/rdflib’


```
# redland

<details>

* Version: 1.0.17-18
* GitHub: https://github.com/ropensci/redland-bindings
* Source code: https://github.com/cran/redland
* Date/Publication: 2024-02-24 01:10:02 UTC
* Number of recursive dependencies: 59

Run `revdepcheck::cloud_details(, "redland")` for more info

</details>

## In both

*   checking whether package ‘redland’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/redland/new/redland.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘redland’ ...
** package ‘redland’ successfully unpacked and MD5 sums checked
** using staged installation
Using PKG_CFLAGS=
Using PKG_LIBS=-lrdf
------------------------- ANTICONF ERROR ---------------------------
Configuration failed because redland was not found. Try installing:
 * deb: librdf0-dev (Debian, Ubuntu, etc)
 * rpm: redland-devel (Fedora, EPEL)
 * brew: redland (OSX)
If redland is already installed, check that 'pkg-config' is in your
PATH and PKG_CONFIG_PATH contains a redland.pc file. If pkg-config
is unavailable you can set INCLUDE_DIR and LIB_DIR manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
--------------------------------------------------------------------
ERROR: configuration failed for package ‘redland’
* removing ‘/tmp/workdir/redland/new/redland.Rcheck/redland’


```
### CRAN

```
* installing *source* package ‘redland’ ...
** package ‘redland’ successfully unpacked and MD5 sums checked
** using staged installation
Using PKG_CFLAGS=
Using PKG_LIBS=-lrdf
------------------------- ANTICONF ERROR ---------------------------
Configuration failed because redland was not found. Try installing:
 * deb: librdf0-dev (Debian, Ubuntu, etc)
 * rpm: redland-devel (Fedora, EPEL)
 * brew: redland (OSX)
If redland is already installed, check that 'pkg-config' is in your
PATH and PKG_CONFIG_PATH contains a redland.pc file. If pkg-config
is unavailable you can set INCLUDE_DIR and LIB_DIR manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
--------------------------------------------------------------------
ERROR: configuration failed for package ‘redland’
* removing ‘/tmp/workdir/redland/old/redland.Rcheck/redland’


```
# revert

<details>

* Version: 0.0.1
* GitHub: NA
* Source code: https://github.com/cran/revert
* Date/Publication: 2023-11-23 16:20:05 UTC
* Number of recursive dependencies: 73

Run `revdepcheck::cloud_details(, "revert")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/revert/new/revert.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘revert/DESCRIPTION’ ... OK
...
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available:
  'BSgenome', 'BSgenome.Hsapiens.UCSC.hg38'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/revert/old/revert.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘revert/DESCRIPTION’ ... OK
...
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available:
  'BSgenome', 'BSgenome.Hsapiens.UCSC.hg38'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# RFLPtools

<details>

* Version: 2.0
* GitHub: NA
* Source code: https://github.com/cran/RFLPtools
* Date/Publication: 2022-02-08 09:40:02 UTC
* Number of recursive dependencies: 52

Run `revdepcheck::cloud_details(, "RFLPtools")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/RFLPtools/new/RFLPtools.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘RFLPtools/DESCRIPTION’ ... OK
...
--- failed re-building ‘RFLPtools.Rmd’

SUMMARY: processing the following file failed:
  ‘RFLPtools.Rmd’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 1 ERROR, 1 WARNING, 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/RFLPtools/old/RFLPtools.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘RFLPtools/DESCRIPTION’ ... OK
...
--- failed re-building ‘RFLPtools.Rmd’

SUMMARY: processing the following file failed:
  ‘RFLPtools.Rmd’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 1 ERROR, 1 WARNING, 2 NOTEs





```
# Rgff

<details>

* Version: 0.1.6
* GitHub: NA
* Source code: https://github.com/cran/Rgff
* Date/Publication: 2022-09-30 10:40:02 UTC
* Number of recursive dependencies: 113

Run `revdepcheck::cloud_details(, "Rgff")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/Rgff/new/Rgff.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Rgff/DESCRIPTION’ ... OK
...
--- failed re-building ‘Using_Rgff.Rmd’

SUMMARY: processing the following file failed:
  ‘Using_Rgff.Rmd’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 1 ERROR, 3 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/Rgff/old/Rgff.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Rgff/DESCRIPTION’ ... OK
...
--- failed re-building ‘Using_Rgff.Rmd’

SUMMARY: processing the following file failed:
  ‘Using_Rgff.Rmd’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 1 ERROR, 3 NOTEs





```
# RGraphSpace

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/RGraphSpace
* Number of recursive dependencies: 65

Run `revdepcheck::cloud_details(, "RGraphSpace")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# rms

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/rms
* Number of recursive dependencies: 145

Run `revdepcheck::cloud_details(, "rms")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# RNAseqQC

<details>

* Version: 0.2.1
* GitHub: https://github.com/frederikziebell/RNAseqQC
* Source code: https://github.com/cran/RNAseqQC
* Date/Publication: 2024-07-15 14:40:02 UTC
* Number of recursive dependencies: 162

Run `revdepcheck::cloud_details(, "RNAseqQC")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/RNAseqQC/new/RNAseqQC.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘RNAseqQC/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'ensembldb', 'ComplexHeatmap'

Package suggested but not available for checking: ‘recount3’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/RNAseqQC/old/RNAseqQC.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘RNAseqQC/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'ensembldb', 'ComplexHeatmap'

Package suggested but not available for checking: ‘recount3’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# robmed

<details>

* Version: 1.0.2
* GitHub: https://github.com/aalfons/robmed
* Source code: https://github.com/cran/robmed
* Date/Publication: 2023-06-16 23:00:02 UTC
* Number of recursive dependencies: 60

Run `revdepcheck::cloud_details(, "robmed")` for more info

</details>

## In both

*   checking whether package ‘robmed’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/robmed/new/robmed.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘robmed’ ...
** package ‘robmed’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘robmed’
* removing ‘/tmp/workdir/robmed/new/robmed.Rcheck/robmed’


```
### CRAN

```
* installing *source* package ‘robmed’ ...
** package ‘robmed’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘robmed’
* removing ‘/tmp/workdir/robmed/old/robmed.Rcheck/robmed’


```
# RPPASPACE

<details>

* Version: 1.0.10
* GitHub: https://github.com/MD-Anderson-Bioinformatics/rppaspace
* Source code: https://github.com/cran/RPPASPACE
* Date/Publication: 2023-10-19 21:30:08 UTC
* Number of recursive dependencies: 60

Run `revdepcheck::cloud_details(, "RPPASPACE")` for more info

</details>

## In both

*   checking whether package ‘RPPASPACE’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/RPPASPACE/new/RPPASPACE.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘RPPASPACE’ ...
** package ‘RPPASPACE’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘RPPASPACE’
* removing ‘/tmp/workdir/RPPASPACE/new/RPPASPACE.Rcheck/RPPASPACE’


```
### CRAN

```
* installing *source* package ‘RPPASPACE’ ...
** package ‘RPPASPACE’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘RPPASPACE’
* removing ‘/tmp/workdir/RPPASPACE/old/RPPASPACE.Rcheck/RPPASPACE’


```
# RQdeltaCT

<details>

* Version: 1.3.0
* GitHub: NA
* Source code: https://github.com/cran/RQdeltaCT
* Date/Publication: 2024-04-17 15:50:02 UTC
* Number of recursive dependencies: 166

Run `revdepcheck::cloud_details(, "RQdeltaCT")` for more info

</details>

## In both

*   checking whether package ‘RQdeltaCT’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/RQdeltaCT/new/RQdeltaCT.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘RQdeltaCT’ ...
** package ‘RQdeltaCT’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘RQdeltaCT’
* removing ‘/tmp/workdir/RQdeltaCT/new/RQdeltaCT.Rcheck/RQdeltaCT’


```
### CRAN

```
* installing *source* package ‘RQdeltaCT’ ...
** package ‘RQdeltaCT’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘RQdeltaCT’
* removing ‘/tmp/workdir/RQdeltaCT/old/RQdeltaCT.Rcheck/RQdeltaCT’


```
# rqPen

<details>

* Version: 4.1.1
* GitHub: https://github.com/bssherwood/rqpen
* Source code: https://github.com/cran/rqPen
* Date/Publication: 2024-06-04 13:30:01 UTC
* Number of recursive dependencies: 24

Run `revdepcheck::cloud_details(, "rqPen")` for more info

</details>

## In both

*   checking whether package ‘rqPen’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/rqPen/new/rqPen.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘rqPen’ ...
** package ‘rqPen’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c solvebetaRcpp.cpp -o solvebetaRcpp.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o rqPen.so RcppExports.o solvebetaRcpp.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/rqPen/new/rqPen.Rcheck/00LOCK-rqPen/00new/rqPen/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘rqPen’
* removing ‘/tmp/workdir/rqPen/new/rqPen.Rcheck/rqPen’


```
### CRAN

```
* installing *source* package ‘rqPen’ ...
** package ‘rqPen’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.3.1/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include    -fpic  -g -O2  -c solvebetaRcpp.cpp -o solvebetaRcpp.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o rqPen.so RcppExports.o solvebetaRcpp.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/rqPen/old/rqPen.Rcheck/00LOCK-rqPen/00new/rqPen/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘rqPen’
* removing ‘/tmp/workdir/rqPen/old/rqPen.Rcheck/rqPen’


```
# Rraven

<details>

* Version: 1.0.14
* GitHub: https://github.com/maRce10/Rraven
* Source code: https://github.com/cran/Rraven
* Date/Publication: 2024-08-19 22:40:10 UTC
* Number of recursive dependencies: 90

Run `revdepcheck::cloud_details(, "Rraven")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/Rraven/new/Rraven.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Rraven/DESCRIPTION’ ... OK
...
* checking extension type ... Package
* this is package ‘Rraven’ version ‘1.0.14’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘warbleR’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/Rraven/old/Rraven.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Rraven/DESCRIPTION’ ... OK
...
* checking extension type ... Package
* this is package ‘Rraven’ version ‘1.0.14’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘warbleR’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# RRPP

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/RRPP
* Number of recursive dependencies: 68

Run `revdepcheck::cloud_details(, "RRPP")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# rsolr

<details>

* Version: 0.0.13
* GitHub: NA
* Source code: https://github.com/cran/rsolr
* Date/Publication: 2022-05-18 07:10:02 UTC
* Number of recursive dependencies: 27

Run `revdepcheck::cloud_details(, "rsolr")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/rsolr/new/rsolr.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘rsolr/DESCRIPTION’ ... OK
...
* checking extension type ... Package
* this is package ‘rsolr’ version ‘0.0.13’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'restfulr', 'rjson'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/rsolr/old/rsolr.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘rsolr/DESCRIPTION’ ... OK
...
* checking extension type ... Package
* this is package ‘rsolr’ version ‘0.0.13’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'restfulr', 'rjson'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# rstanarm

<details>

* Version: 2.32.1
* GitHub: https://github.com/stan-dev/rstanarm
* Source code: https://github.com/cran/rstanarm
* Date/Publication: 2024-01-18 23:00:03 UTC
* Number of recursive dependencies: 138

Run `revdepcheck::cloud_details(, "rstanarm")` for more info

</details>

## In both

*   checking whether package ‘rstanarm’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/rstanarm/new/rstanarm.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘rstanarm’ ...
** package ‘rstanarm’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++17
"/opt/R/4.3.1/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/bernoulli.stan
Wrote C++ file "stan_files/bernoulli.cc"


...
/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/stan/math/rev/fun/quad_form.hpp:88:16:   required from here
/opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:654:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  654 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.3.1/lib/R/etc/Makeconf:198: stan_files/continuous.o] Error 1
rm stan_files/bernoulli.cc stan_files/binomial.cc stan_files/continuous.cc
ERROR: compilation failed for package ‘rstanarm’
* removing ‘/tmp/workdir/rstanarm/new/rstanarm.Rcheck/rstanarm’


```
### CRAN

```
* installing *source* package ‘rstanarm’ ...
** package ‘rstanarm’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
using C++17
"/opt/R/4.3.1/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/bernoulli.stan
Wrote C++ file "stan_files/bernoulli.cc"


...
/opt/R/4.3.1/lib/R/site-library/StanHeaders/include/stan/math/rev/fun/quad_form.hpp:88:16:   required from here
/opt/R/4.3.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:654:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  654 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.3.1/lib/R/etc/Makeconf:198: stan_files/continuous.o] Error 1
rm stan_files/bernoulli.cc stan_files/binomial.cc stan_files/continuous.cc
ERROR: compilation failed for package ‘rstanarm’
* removing ‘/tmp/workdir/rstanarm/old/rstanarm.Rcheck/rstanarm’


```
# RTIGER

<details>

* Version: 2.1.0
* GitHub: NA
* Source code: https://github.com/cran/RTIGER
* Date/Publication: 2023-03-29 09:20:02 UTC
* Number of recursive dependencies: 160

Run `revdepcheck::cloud_details(, "RTIGER")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/RTIGER/new/RTIGER.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘RTIGER/DESCRIPTION’ ... OK
...
* checking installed files from ‘inst/doc’ ... OK
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘tutorial_RTIGER.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/RTIGER/old/RTIGER.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘RTIGER/DESCRIPTION’ ... OK
...
* checking installed files from ‘inst/doc’ ... OK
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘tutorial_RTIGER.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
# rTwig

<details>

* Version: 1.1.0
* GitHub: https://github.com/aidanmorales/rTwig
* Source code: https://github.com/cran/rTwig
* Date/Publication: 2024-08-21 00:50:02 UTC
* Number of recursive dependencies: 147

Run `revdepcheck::cloud_details(, "rTwig")` for more info

</details>

## In both

*   checking whether package ‘rTwig’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/rTwig/new/rTwig.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘rTwig’ ...
** package ‘rTwig’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c box_counting.cpp -o box_counting.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c colors.cpp -o colors.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c convex_hull.cpp -o convex_hull.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c cylinder_mesh.cpp -o cylinder_mesh.o
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘rTwig’
* removing ‘/tmp/workdir/rTwig/new/rTwig.Rcheck/rTwig’


```
### CRAN

```
* installing *source* package ‘rTwig’ ...
** package ‘rTwig’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c box_counting.cpp -o box_counting.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c colors.cpp -o colors.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c convex_hull.cpp -o convex_hull.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c cylinder_mesh.cpp -o cylinder_mesh.o
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘rTwig’
* removing ‘/tmp/workdir/rTwig/old/rTwig.Rcheck/rTwig’


```
# RVA

<details>

* Version: 0.0.5
* GitHub: https://github.com/THERMOSTATS/RVA
* Source code: https://github.com/cran/RVA
* Date/Publication: 2021-11-01 21:40:02 UTC
* Number of recursive dependencies: 207

Run `revdepcheck::cloud_details(, "RVA")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/RVA/new/RVA.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘RVA/DESCRIPTION’ ... OK
...
* this is package ‘RVA’ version ‘0.0.5’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'ComplexHeatmap', 'rWikiPathways'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/RVA/old/RVA.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘RVA/DESCRIPTION’ ... OK
...
* this is package ‘RVA’ version ‘0.0.5’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'ComplexHeatmap', 'rWikiPathways'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# scAnnotate

<details>

* Version: 0.3
* GitHub: NA
* Source code: https://github.com/cran/scAnnotate
* Date/Publication: 2024-03-14 00:00:02 UTC
* Number of recursive dependencies: 164

Run `revdepcheck::cloud_details(, "scAnnotate")` for more info

</details>

## In both

*   checking whether package ‘scAnnotate’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/scAnnotate/new/scAnnotate.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘scAnnotate’ ...
** package ‘scAnnotate’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘scAnnotate’
* removing ‘/tmp/workdir/scAnnotate/new/scAnnotate.Rcheck/scAnnotate’


```
### CRAN

```
* installing *source* package ‘scAnnotate’ ...
** package ‘scAnnotate’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘scAnnotate’
* removing ‘/tmp/workdir/scAnnotate/old/scAnnotate.Rcheck/scAnnotate’


```
# scaper

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/scaper
* Date/Publication: 2023-10-19 07:20:02 UTC
* Number of recursive dependencies: 161

Run `revdepcheck::cloud_details(, "scaper")` for more info

</details>

## In both

*   checking whether package ‘scaper’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/scaper/new/scaper.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘scaper’ ...
** package ‘scaper’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘scaper’
* removing ‘/tmp/workdir/scaper/new/scaper.Rcheck/scaper’


```
### CRAN

```
* installing *source* package ‘scaper’ ...
** package ‘scaper’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘scaper’
* removing ‘/tmp/workdir/scaper/old/scaper.Rcheck/scaper’


```
# scCustomize

<details>

* Version: 2.1.2
* GitHub: https://github.com/samuel-marsh/scCustomize
* Source code: https://github.com/cran/scCustomize
* Date/Publication: 2024-02-28 19:40:02 UTC
* Number of recursive dependencies: 267

Run `revdepcheck::cloud_details(, "scCustomize")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/scCustomize/new/scCustomize.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘scCustomize/DESCRIPTION’ ... OK
...
* checking if there is a namespace ... OK
* checking for executable files ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking for sufficient/correct file permissions ... OK
* checking whether package ‘scCustomize’ can be installed ... ERROR
Installation failed.
See ‘/tmp/workdir/scCustomize/new/scCustomize.Rcheck/00install.out’ for details.
* DONE
Status: 1 ERROR, 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/scCustomize/old/scCustomize.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘scCustomize/DESCRIPTION’ ... OK
...
* checking if there is a namespace ... OK
* checking for executable files ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking for sufficient/correct file permissions ... OK
* checking whether package ‘scCustomize’ can be installed ... ERROR
Installation failed.
See ‘/tmp/workdir/scCustomize/old/scCustomize.Rcheck/00install.out’ for details.
* DONE
Status: 1 ERROR, 1 NOTE





```
# SCdeconR

<details>

* Version: 1.0.0
* GitHub: https://github.com/Liuy12/SCdeconR
* Source code: https://github.com/cran/SCdeconR
* Date/Publication: 2024-03-22 19:20:02 UTC
* Number of recursive dependencies: 236

Run `revdepcheck::cloud_details(, "SCdeconR")` for more info

</details>

## In both

*   checking whether package ‘SCdeconR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/SCdeconR/new/SCdeconR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘SCdeconR’ ...
** package ‘SCdeconR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘SeuratObject’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is being loaded, but >= 1.6.4 is required
Execution halted
ERROR: lazy loading failed for package ‘SCdeconR’
* removing ‘/tmp/workdir/SCdeconR/new/SCdeconR.Rcheck/SCdeconR’


```
### CRAN

```
* installing *source* package ‘SCdeconR’ ...
** package ‘SCdeconR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘SeuratObject’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is being loaded, but >= 1.6.4 is required
Execution halted
ERROR: lazy loading failed for package ‘SCdeconR’
* removing ‘/tmp/workdir/SCdeconR/old/SCdeconR.Rcheck/SCdeconR’


```
# scGate

<details>

* Version: 1.6.2
* GitHub: https://github.com/carmonalab/scGate
* Source code: https://github.com/cran/scGate
* Date/Publication: 2024-04-23 08:50:02 UTC
* Number of recursive dependencies: 179

Run `revdepcheck::cloud_details(, "scGate")` for more info

</details>

## In both

*   checking whether package ‘scGate’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/scGate/new/scGate.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘scGate’ ...
** package ‘scGate’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘Seurat’ is not available and has been replaced
by .GlobalEnv when processing object ‘query.seurat’
Warning: namespace ‘Seurat’ is not available and has been replaced
by .GlobalEnv when processing object ‘query.seurat’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘scGate’
* removing ‘/tmp/workdir/scGate/new/scGate.Rcheck/scGate’


```
### CRAN

```
* installing *source* package ‘scGate’ ...
** package ‘scGate’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘Seurat’ is not available and has been replaced
by .GlobalEnv when processing object ‘query.seurat’
Warning: namespace ‘Seurat’ is not available and has been replaced
by .GlobalEnv when processing object ‘query.seurat’
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘scGate’
* removing ‘/tmp/workdir/scGate/old/scGate.Rcheck/scGate’


```
# scGOclust

<details>

* Version: 0.2.1
* GitHub: https://github.com/Papatheodorou-Group/scGOclust
* Source code: https://github.com/cran/scGOclust
* Date/Publication: 2024-01-24 14:40:02 UTC
* Number of recursive dependencies: 217

Run `revdepcheck::cloud_details(, "scGOclust")` for more info

</details>

## In both

*   checking whether package ‘scGOclust’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/scGOclust/new/scGOclust.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘scGOclust’ ...
** package ‘scGOclust’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘scGOclust’
* removing ‘/tmp/workdir/scGOclust/new/scGOclust.Rcheck/scGOclust’


```
### CRAN

```
* installing *source* package ‘scGOclust’ ...
** package ‘scGOclust’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘scGOclust’
* removing ‘/tmp/workdir/scGOclust/old/scGOclust.Rcheck/scGOclust’


```
# SCIntRuler

<details>

* Version: 0.99.6
* GitHub: https://github.com/yuelyu21/SCIntRuler
* Source code: https://github.com/cran/SCIntRuler
* Date/Publication: 2024-07-12 15:20:08 UTC
* Number of recursive dependencies: 202

Run `revdepcheck::cloud_details(, "SCIntRuler")` for more info

</details>

## In both

*   checking whether package ‘SCIntRuler’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/SCIntRuler/new/SCIntRuler.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘SCIntRuler’ ...
** package ‘SCIntRuler’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c crossdist.cpp -o crossdist.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o SCIntRuler.so RcppExports.o crossdist.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/SCIntRuler/new/SCIntRuler.Rcheck/00LOCK-SCIntRuler/00new/SCIntRuler/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is being loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘SCIntRuler’
* removing ‘/tmp/workdir/SCIntRuler/new/SCIntRuler.Rcheck/SCIntRuler’


```
### CRAN

```
* installing *source* package ‘SCIntRuler’ ...
** package ‘SCIntRuler’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c crossdist.cpp -o crossdist.o
g++ -std=gnu++17 -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o SCIntRuler.so RcppExports.o crossdist.o -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/SCIntRuler/old/SCIntRuler.Rcheck/00LOCK-SCIntRuler/00new/SCIntRuler/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is being loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘SCIntRuler’
* removing ‘/tmp/workdir/SCIntRuler/old/SCIntRuler.Rcheck/SCIntRuler’


```
# scITD

<details>

* Version: 1.0.4
* GitHub: NA
* Source code: https://github.com/cran/scITD
* Date/Publication: 2023-09-08 16:00:02 UTC
* Number of recursive dependencies: 233

Run `revdepcheck::cloud_details(, "scITD")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/scITD/new/scITD.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘scITD/DESCRIPTION’ ... OK
...
* checking package dependencies ... ERROR
Package required but not available: ‘ComplexHeatmap’

Packages suggested but not available for checking:
  'simplifyEnrichment', 'conos', 'pagoda2'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/scITD/old/scITD.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘scITD/DESCRIPTION’ ... OK
...
* checking package dependencies ... ERROR
Package required but not available: ‘ComplexHeatmap’

Packages suggested but not available for checking:
  'simplifyEnrichment', 'conos', 'pagoda2'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# scMappR

<details>

* Version: 1.0.11
* GitHub: NA
* Source code: https://github.com/cran/scMappR
* Date/Publication: 2023-06-30 08:40:08 UTC
* Number of recursive dependencies: 241

Run `revdepcheck::cloud_details(, "scMappR")` for more info

</details>

## In both

*   checking whether package ‘scMappR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/scMappR/new/scMappR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘scMappR’ ...
** package ‘scMappR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘scMappR’
* removing ‘/tmp/workdir/scMappR/new/scMappR.Rcheck/scMappR’


```
### CRAN

```
* installing *source* package ‘scMappR’ ...
** package ‘scMappR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘scMappR’
* removing ‘/tmp/workdir/scMappR/old/scMappR.Rcheck/scMappR’


```
# SCRIP

<details>

* Version: 1.0.0
* GitHub: https://github.com/thecailab/SCRIP
* Source code: https://github.com/cran/SCRIP
* Date/Publication: 2021-11-19 07:50:02 UTC
* Number of recursive dependencies: 192

Run `revdepcheck::cloud_details(, "SCRIP")` for more info

</details>

## In both

*   checking whether package ‘SCRIP’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/SCRIP/new/SCRIP.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘SCRIP’ ...
** package ‘SCRIP’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘SCRIP’
* removing ‘/tmp/workdir/SCRIP/new/SCRIP.Rcheck/SCRIP’


```
### CRAN

```
* installing *source* package ‘SCRIP’ ...
** package ‘SCRIP’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘SCRIP’
* removing ‘/tmp/workdir/SCRIP/old/SCRIP.Rcheck/SCRIP’


```
# SeBR

<details>

* Version: 1.0.0
* GitHub: https://github.com/drkowal/SeBR
* Source code: https://github.com/cran/SeBR
* Date/Publication: 2023-07-03 16:30:10 UTC
* Number of recursive dependencies: 77

Run `revdepcheck::cloud_details(, "SeBR")` for more info

</details>

## In both

*   checking whether package ‘SeBR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/SeBR/new/SeBR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘SeBR’ ...
** package ‘SeBR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘SeBR’
* removing ‘/tmp/workdir/SeBR/new/SeBR.Rcheck/SeBR’


```
### CRAN

```
* installing *source* package ‘SeBR’ ...
** package ‘SeBR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘SeBR’
* removing ‘/tmp/workdir/SeBR/old/SeBR.Rcheck/SeBR’


```
# SeedMatchR

<details>

* Version: 1.1.1
* GitHub: NA
* Source code: https://github.com/cran/SeedMatchR
* Date/Publication: 2023-10-24 20:30:02 UTC
* Number of recursive dependencies: 167

Run `revdepcheck::cloud_details(, "SeedMatchR")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/SeedMatchR/new/SeedMatchR.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘SeedMatchR/DESCRIPTION’ ... OK
...
* this is package ‘SeedMatchR’ version ‘1.1.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'msa', 'GenomicFeatures'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/SeedMatchR/old/SeedMatchR.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘SeedMatchR/DESCRIPTION’ ... OK
...
* this is package ‘SeedMatchR’ version ‘1.1.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'msa', 'GenomicFeatures'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# semicmprskcoxmsm

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/semicmprskcoxmsm
* Date/Publication: 2022-04-29 23:40:02 UTC
* Number of recursive dependencies: 70

Run `revdepcheck::cloud_details(, "semicmprskcoxmsm")` for more info

</details>

## In both

*   checking whether package ‘semicmprskcoxmsm’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/semicmprskcoxmsm/new/semicmprskcoxmsm.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘semicmprskcoxmsm’ ...
** package ‘semicmprskcoxmsm’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘semicmprskcoxmsm’
* removing ‘/tmp/workdir/semicmprskcoxmsm/new/semicmprskcoxmsm.Rcheck/semicmprskcoxmsm’


```
### CRAN

```
* installing *source* package ‘semicmprskcoxmsm’ ...
** package ‘semicmprskcoxmsm’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘semicmprskcoxmsm’
* removing ‘/tmp/workdir/semicmprskcoxmsm/old/semicmprskcoxmsm.Rcheck/semicmprskcoxmsm’


```
# SGP

<details>

* Version: 2.1-0.0
* GitHub: https://github.com/CenterForAssessment/SGP
* Source code: https://github.com/cran/SGP
* Date/Publication: 2023-10-23 15:50:19 UTC
* Number of recursive dependencies: 112

Run `revdepcheck::cloud_details(, "SGP")` for more info

</details>

## In both

*   checking whether package ‘SGP’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/SGP/new/SGP.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘SGP’ ...
** package ‘SGP’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘SGP’
* removing ‘/tmp/workdir/SGP/new/SGP.Rcheck/SGP’


```
### CRAN

```
* installing *source* package ‘SGP’ ...
** package ‘SGP’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘SGP’
* removing ‘/tmp/workdir/SGP/old/SGP.Rcheck/SGP’


```
# shinyTempSignal

<details>

* Version: 0.0.8
* GitHub: https://github.com/YuLab-SMU/shinyTempSignal
* Source code: https://github.com/cran/shinyTempSignal
* Date/Publication: 2024-03-06 08:00:02 UTC
* Number of recursive dependencies: 137

Run `revdepcheck::cloud_details(, "shinyTempSignal")` for more info

</details>

## In both

*   checking whether package ‘shinyTempSignal’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/shinyTempSignal/new/shinyTempSignal.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘shinyTempSignal’ ...
** package ‘shinyTempSignal’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘shinyTempSignal’
* removing ‘/tmp/workdir/shinyTempSignal/new/shinyTempSignal.Rcheck/shinyTempSignal’


```
### CRAN

```
* installing *source* package ‘shinyTempSignal’ ...
** package ‘shinyTempSignal’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘shinyTempSignal’
* removing ‘/tmp/workdir/shinyTempSignal/old/shinyTempSignal.Rcheck/shinyTempSignal’


```
# sigminer

<details>

* Version: 2.3.1
* GitHub: https://github.com/ShixiangWang/sigminer
* Source code: https://github.com/cran/sigminer
* Date/Publication: 2024-05-11 08:50:02 UTC
* Number of recursive dependencies: 209

Run `revdepcheck::cloud_details(, "sigminer")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/sigminer/new/sigminer.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘sigminer/DESCRIPTION’ ... OK
...
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘cnsignature.Rmd’ using ‘UTF-8’... OK
  ‘sigminer.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/sigminer/old/sigminer.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘sigminer/DESCRIPTION’ ... OK
...
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘cnsignature.Rmd’ using ‘UTF-8’... OK
  ‘sigminer.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 2 NOTEs





```
# SimplyAgree

<details>

* Version: 0.2.0
* GitHub: https://github.com/arcaldwell49/SimplyAgree
* Source code: https://github.com/cran/SimplyAgree
* Date/Publication: 2024-03-21 14:20:06 UTC
* Number of recursive dependencies: 115

Run `revdepcheck::cloud_details(, "SimplyAgree")` for more info

</details>

## In both

*   checking whether package ‘SimplyAgree’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/SimplyAgree/new/SimplyAgree.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘SimplyAgree’ ...
** package ‘SimplyAgree’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Warning in check_dep_version() :
  ABI version mismatch: 
lme4 was built with Matrix ABI version 1
Current Matrix ABI version is 0
Please re-install lme4 from source or restore original ‘Matrix’ package
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘SimplyAgree’
* removing ‘/tmp/workdir/SimplyAgree/new/SimplyAgree.Rcheck/SimplyAgree’


```
### CRAN

```
* installing *source* package ‘SimplyAgree’ ...
** package ‘SimplyAgree’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Warning in check_dep_version() :
  ABI version mismatch: 
lme4 was built with Matrix ABI version 1
Current Matrix ABI version is 0
Please re-install lme4 from source or restore original ‘Matrix’ package
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘SimplyAgree’
* removing ‘/tmp/workdir/SimplyAgree/old/SimplyAgree.Rcheck/SimplyAgree’


```
# sizeMat

<details>

* Version: 1.1.2
* GitHub: NA
* Source code: https://github.com/cran/sizeMat
* Date/Publication: 2020-06-03 22:00:02 UTC
* Number of recursive dependencies: 37

Run `revdepcheck::cloud_details(, "sizeMat")` for more info

</details>

## In both

*   checking whether package ‘sizeMat’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/sizeMat/new/sizeMat.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘sizeMat’ ...
** package ‘sizeMat’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘sizeMat’
* removing ‘/tmp/workdir/sizeMat/new/sizeMat.Rcheck/sizeMat’


```
### CRAN

```
* installing *source* package ‘sizeMat’ ...
** package ‘sizeMat’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘sizeMat’
* removing ‘/tmp/workdir/sizeMat/old/sizeMat.Rcheck/sizeMat’


```
# SNPassoc

<details>

* Version: 2.1-0
* GitHub: https://github.com/isglobal-brge/SNPassoc
* Source code: https://github.com/cran/SNPassoc
* Date/Publication: 2022-12-14 20:20:02 UTC
* Number of recursive dependencies: 168

Run `revdepcheck::cloud_details(, "SNPassoc")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/SNPassoc/new/SNPassoc.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘SNPassoc/DESCRIPTION’ ... OK
...
* checking if there is a namespace ... OK
* checking for executable files ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking for sufficient/correct file permissions ... OK
* checking whether package ‘SNPassoc’ can be installed ... ERROR
Installation failed.
See ‘/tmp/workdir/SNPassoc/new/SNPassoc.Rcheck/00install.out’ for details.
* DONE
Status: 1 ERROR, 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/SNPassoc/old/SNPassoc.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘SNPassoc/DESCRIPTION’ ... OK
...
* checking if there is a namespace ... OK
* checking for executable files ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking for sufficient/correct file permissions ... OK
* checking whether package ‘SNPassoc’ can be installed ... ERROR
Installation failed.
See ‘/tmp/workdir/SNPassoc/old/SNPassoc.Rcheck/00install.out’ for details.
* DONE
Status: 1 ERROR, 1 NOTE





```
# snplinkage

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/snplinkage
* Date/Publication: 2023-05-04 08:10:02 UTC
* Number of recursive dependencies: 144

Run `revdepcheck::cloud_details(, "snplinkage")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/snplinkage/new/snplinkage.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘snplinkage/DESCRIPTION’ ... OK
...
* this is package ‘snplinkage’ version ‘1.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘GWASTools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/snplinkage/old/snplinkage.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘snplinkage/DESCRIPTION’ ... OK
...
* this is package ‘snplinkage’ version ‘1.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘GWASTools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# sorocs

<details>

* Version: 0.1.0
* GitHub: https://github.com/wzhang17/sorocs
* Source code: https://github.com/cran/sorocs
* Date/Publication: 2020-03-13 09:10:02 UTC
* Number of recursive dependencies: 37

Run `revdepcheck::cloud_details(, "sorocs")` for more info

</details>

## In both

*   checking whether package ‘sorocs’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/sorocs/new/sorocs.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘sorocs’ ...
** package ‘sorocs’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘sorocs’
* removing ‘/tmp/workdir/sorocs/new/sorocs.Rcheck/sorocs’


```
### CRAN

```
* installing *source* package ‘sorocs’ ...
** package ‘sorocs’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘sorocs’
* removing ‘/tmp/workdir/sorocs/old/sorocs.Rcheck/sorocs’


```
# SortedEffects

<details>

* Version: 1.7.0
* GitHub: https://github.com/shuowencs/SortedEffects
* Source code: https://github.com/cran/SortedEffects
* Date/Publication: 2022-03-22 07:10:02 UTC
* Number of recursive dependencies: 71

Run `revdepcheck::cloud_details(, "SortedEffects")` for more info

</details>

## In both

*   checking whether package ‘SortedEffects’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/SortedEffects/new/SortedEffects.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘SortedEffects’ ...
** package ‘SortedEffects’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘SortedEffects’
* removing ‘/tmp/workdir/SortedEffects/new/SortedEffects.Rcheck/SortedEffects’


```
### CRAN

```
* installing *source* package ‘SortedEffects’ ...
** package ‘SortedEffects’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘SortedEffects’
* removing ‘/tmp/workdir/SortedEffects/old/SortedEffects.Rcheck/SortedEffects’


```
# SoupX

<details>

* Version: 1.6.2
* GitHub: https://github.com/constantAmateur/SoupX
* Source code: https://github.com/cran/SoupX
* Date/Publication: 2022-11-01 14:00:03 UTC
* Number of recursive dependencies: 201

Run `revdepcheck::cloud_details(, "SoupX")` for more info

</details>

## In both

*   checking whether package ‘SoupX’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/SoupX/new/SoupX.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘SoupX’ ...
** package ‘SoupX’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘SoupX’
* removing ‘/tmp/workdir/SoupX/new/SoupX.Rcheck/SoupX’


```
### CRAN

```
* installing *source* package ‘SoupX’ ...
** package ‘SoupX’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘SoupX’
* removing ‘/tmp/workdir/SoupX/old/SoupX.Rcheck/SoupX’


```
# SpatialDDLS

<details>

* Version: 1.0.2
* GitHub: https://github.com/diegommcc/SpatialDDLS
* Source code: https://github.com/cran/SpatialDDLS
* Date/Publication: 2024-04-26 16:10:02 UTC
* Number of recursive dependencies: 207

Run `revdepcheck::cloud_details(, "SpatialDDLS")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/SpatialDDLS/new/SpatialDDLS.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘SpatialDDLS/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘SpatialExperiment’

Package suggested but not available for checking: ‘ComplexHeatmap’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/SpatialDDLS/old/SpatialDDLS.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘SpatialDDLS/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘SpatialExperiment’

Package suggested but not available for checking: ‘ComplexHeatmap’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# speakeasyR

<details>

* Version: 0.1.3
* GitHub: https://github.com/SpeakEasy-2/speakeasyR
* Source code: https://github.com/cran/speakeasyR
* Date/Publication: 2024-08-20 09:40:06 UTC
* Number of recursive dependencies: 138

Run `revdepcheck::cloud_details(, "speakeasyR")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/speakeasyR/new/speakeasyR.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘speakeasyR/DESCRIPTION’ ... OK
...
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘speakeasyR.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/speakeasyR/old/speakeasyR.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘speakeasyR/DESCRIPTION’ ... OK
...
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘speakeasyR.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
# spikeSlabGAM

<details>

* Version: 1.1-19
* GitHub: https://github.com/fabian-s/spikeSlabGAM
* Source code: https://github.com/cran/spikeSlabGAM
* Date/Publication: 2022-06-10 15:50:07 UTC
* Number of recursive dependencies: 77

Run `revdepcheck::cloud_details(, "spikeSlabGAM")` for more info

</details>

## In both

*   checking whether package ‘spikeSlabGAM’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/spikeSlabGAM/new/spikeSlabGAM.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘spikeSlabGAM’ ...
** package ‘spikeSlabGAM’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c sampler.c -o sampler.o
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c spikeSlabGAM_init.c -o spikeSlabGAM_init.o
gcc -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o spikeSlabGAM.so sampler.o spikeSlabGAM_init.o -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/spikeSlabGAM/new/spikeSlabGAM.Rcheck/00LOCK-spikeSlabGAM/00new/spikeSlabGAM/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘spikeSlabGAM’
* removing ‘/tmp/workdir/spikeSlabGAM/new/spikeSlabGAM.Rcheck/spikeSlabGAM’


```
### CRAN

```
* installing *source* package ‘spikeSlabGAM’ ...
** package ‘spikeSlabGAM’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c sampler.c -o sampler.o
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c spikeSlabGAM_init.c -o spikeSlabGAM_init.o
gcc -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o spikeSlabGAM.so sampler.o spikeSlabGAM_init.o -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/spikeSlabGAM/old/spikeSlabGAM.Rcheck/00LOCK-spikeSlabGAM/00new/spikeSlabGAM/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘spikeSlabGAM’
* removing ‘/tmp/workdir/spikeSlabGAM/old/spikeSlabGAM.Rcheck/spikeSlabGAM’


```
# stats4teaching

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/stats4teaching
* Date/Publication: 2022-10-04 05:30:07 UTC
* Number of recursive dependencies: 90

Run `revdepcheck::cloud_details(, "stats4teaching")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/stats4teaching/new/stats4teaching.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘stats4teaching/DESCRIPTION’ ... OK
...
* this is package ‘stats4teaching’ version ‘0.1.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘asbio’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/stats4teaching/old/stats4teaching.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘stats4teaching/DESCRIPTION’ ... OK
...
* this is package ‘stats4teaching’ version ‘0.1.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘asbio’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# statsr

<details>

* Version: 0.3.0
* GitHub: https://github.com/StatsWithR/statsr
* Source code: https://github.com/cran/statsr
* Date/Publication: 2021-01-22 20:40:03 UTC
* Number of recursive dependencies: 97

Run `revdepcheck::cloud_details(, "statsr")` for more info

</details>

## In both

*   checking whether package ‘statsr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/statsr/new/statsr.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘statsr’ ...
** package ‘statsr’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘BayesFactor’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘statsr’
* removing ‘/tmp/workdir/statsr/new/statsr.Rcheck/statsr’


```
### CRAN

```
* installing *source* package ‘statsr’ ...
** package ‘statsr’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘BayesFactor’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘statsr’
* removing ‘/tmp/workdir/statsr/old/statsr.Rcheck/statsr’


```
# stR

<details>

* Version: 0.7
* GitHub: https://github.com/robjhyndman/stR
* Source code: https://github.com/cran/stR
* Date/Publication: 2024-07-28 13:30:01 UTC
* Number of recursive dependencies: 191

Run `revdepcheck::cloud_details(, "stR")` for more info

</details>

## In both

*   checking whether package ‘stR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/stR/new/stR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘stR’ ...
** package ‘stR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘stR’
* removing ‘/tmp/workdir/stR/new/stR.Rcheck/stR’


```
### CRAN

```
* installing *source* package ‘stR’ ...
** package ‘stR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘stR’
* removing ‘/tmp/workdir/stR/old/stR.Rcheck/stR’


```
# STREAK

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/STREAK
* Date/Publication: 2023-11-17 21:10:02 UTC
* Number of recursive dependencies: 152

Run `revdepcheck::cloud_details(, "STREAK")` for more info

</details>

## In both

*   checking whether package ‘STREAK’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/STREAK/new/STREAK.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘STREAK’ ...
** package ‘STREAK’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.1.1 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘STREAK’
* removing ‘/tmp/workdir/STREAK/new/STREAK.Rcheck/STREAK’


```
### CRAN

```
* installing *source* package ‘STREAK’ ...
** package ‘STREAK’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.1.1 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘STREAK’
* removing ‘/tmp/workdir/STREAK/old/STREAK.Rcheck/STREAK’


```
# streamDAG

<details>

* Version: 1.5
* GitHub: NA
* Source code: https://github.com/cran/streamDAG
* Date/Publication: 2023-10-06 18:50:02 UTC
* Number of recursive dependencies: 132

Run `revdepcheck::cloud_details(, "streamDAG")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/streamDAG/new/streamDAG.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘streamDAG/DESCRIPTION’ ... OK
* this is package ‘streamDAG’ version ‘1.5’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘asbio’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/streamDAG/old/streamDAG.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘streamDAG/DESCRIPTION’ ... OK
* this is package ‘streamDAG’ version ‘1.5’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘asbio’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# SubtypeDrug

<details>

* Version: 0.1.9
* GitHub: https://github.com/hanjunwei-lab/SubtypeDrug
* Source code: https://github.com/cran/SubtypeDrug
* Date/Publication: 2024-04-17 06:40:02 UTC
* Number of recursive dependencies: 153

Run `revdepcheck::cloud_details(, "SubtypeDrug")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/SubtypeDrug/new/SubtypeDrug.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘SubtypeDrug/DESCRIPTION’ ... OK
...
* this is package ‘SubtypeDrug’ version ‘0.1.9’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘ChemmineR’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/SubtypeDrug/old/SubtypeDrug.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘SubtypeDrug/DESCRIPTION’ ... OK
...
* this is package ‘SubtypeDrug’ version ‘0.1.9’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘ChemmineR’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# tbm

<details>

* Version: 0.3-6
* GitHub: NA
* Source code: https://github.com/cran/tbm
* Date/Publication: 2024-04-17 12:10:02 UTC
* Number of recursive dependencies: 47

Run `revdepcheck::cloud_details(, "tbm")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/tbm/new/tbm.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘tbm/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'mlt', 'coneproj'

Package suggested but not available for checking: ‘tram’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/tbm/old/tbm.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘tbm/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'mlt', 'coneproj'

Package suggested but not available for checking: ‘tram’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# TH.data

<details>

* Version: 1.1-2
* GitHub: NA
* Source code: https://github.com/cran/TH.data
* Date/Publication: 2023-04-17 22:10:03 UTC
* Number of recursive dependencies: 100

Run `revdepcheck::cloud_details(, "TH.data")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/TH.data/new/TH.data.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘TH.data/DESCRIPTION’ ... OK
...
  When sourcing ‘blood_loss_report.R’:
Error: package ‘mlt’ required by ‘trtf’ could not be found
Execution halted

  ‘blood_loss_report.Rnw’ using ‘UTF-8’... failed
* checking re-building of vignette outputs ... NOTE
Note: skipping ‘blood_loss_report.Rnw’ due to unavailable dependencies:
  'tram', 'rms'
* DONE
Status: 1 ERROR, 3 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/TH.data/old/TH.data.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘TH.data/DESCRIPTION’ ... OK
...
  When sourcing ‘blood_loss_report.R’:
Error: package ‘mlt’ required by ‘trtf’ could not be found
Execution halted

  ‘blood_loss_report.Rnw’ using ‘UTF-8’... failed
* checking re-building of vignette outputs ... NOTE
Note: skipping ‘blood_loss_report.Rnw’ due to unavailable dependencies:
  'tram', 'rms'
* DONE
Status: 1 ERROR, 3 NOTEs





```
# tidyseurat

<details>

* Version: 0.8.0
* GitHub: https://github.com/stemangiola/tidyseurat
* Source code: https://github.com/cran/tidyseurat
* Date/Publication: 2024-01-10 04:50:02 UTC
* Number of recursive dependencies: 208

Run `revdepcheck::cloud_details(, "tidyseurat")` for more info

</details>

## In both

*   checking whether package ‘tidyseurat’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/tidyseurat/new/tidyseurat.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘tidyseurat’ ...
** package ‘tidyseurat’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘SeuratObject’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Execution halted
ERROR: lazy loading failed for package ‘tidyseurat’
* removing ‘/tmp/workdir/tidyseurat/new/tidyseurat.Rcheck/tidyseurat’


```
### CRAN

```
* installing *source* package ‘tidyseurat’ ...
** package ‘tidyseurat’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘SeuratObject’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.4 is required
Execution halted
ERROR: lazy loading failed for package ‘tidyseurat’
* removing ‘/tmp/workdir/tidyseurat/old/tidyseurat.Rcheck/tidyseurat’


```
# tidyvpc

<details>

* Version: 1.5.1
* GitHub: https://github.com/certara/tidyvpc
* Source code: https://github.com/cran/tidyvpc
* Date/Publication: 2024-01-18 13:10:02 UTC
* Number of recursive dependencies: 176

Run `revdepcheck::cloud_details(, "tidyvpc")` for more info

</details>

## In both

*   checking whether package ‘tidyvpc’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/tidyvpc/new/tidyvpc.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘tidyvpc’ ...
** package ‘tidyvpc’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘tidyvpc’
* removing ‘/tmp/workdir/tidyvpc/new/tidyvpc.Rcheck/tidyvpc’


```
### CRAN

```
* installing *source* package ‘tidyvpc’ ...
** package ‘tidyvpc’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘tidyvpc’
* removing ‘/tmp/workdir/tidyvpc/old/tidyvpc.Rcheck/tidyvpc’


```
# tram

<details>

* Version: 1.0-5
* GitHub: NA
* Source code: https://github.com/cran/tram
* Date/Publication: 2024-08-17 15:40:02 UTC
* Number of recursive dependencies: 170

Run `revdepcheck::cloud_details(, "tram")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/tram/new/tram.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘tram/DESCRIPTION’ ... OK
...
* this is package ‘tram’ version ‘1.0-5’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘mlt’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/tram/old/tram.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘tram/DESCRIPTION’ ... OK
...
* this is package ‘tram’ version ‘1.0-5’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘mlt’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# tramME

<details>

* Version: 1.0.6
* GitHub: NA
* Source code: https://github.com/cran/tramME
* Date/Publication: 2024-07-02 16:00:02 UTC
* Number of recursive dependencies: 50

Run `revdepcheck::cloud_details(, "tramME")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/tramME/new/tramME.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘tramME/DESCRIPTION’ ... OK
...
* this is package ‘tramME’ version ‘1.0.6’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'tram', 'mlt', 'coneproj'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/tramME/old/tramME.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘tramME/DESCRIPTION’ ... OK
...
* this is package ‘tramME’ version ‘1.0.6’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'tram', 'mlt', 'coneproj'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# tramnet

<details>

* Version: 0.0-8
* GitHub: NA
* Source code: https://github.com/cran/tramnet
* Date/Publication: 2023-03-10 21:50:02 UTC
* Number of recursive dependencies: 120

Run `revdepcheck::cloud_details(, "tramnet")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/tramnet/new/tramnet.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘tramnet/DESCRIPTION’ ... OK
...
* this is package ‘tramnet’ version ‘0.0-8’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'tram', 'mlt'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/tramnet/old/tramnet.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘tramnet/DESCRIPTION’ ... OK
...
* this is package ‘tramnet’ version ‘0.0-8’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'tram', 'mlt'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# tramvs

<details>

* Version: 0.0-6
* GitHub: NA
* Source code: https://github.com/cran/tramvs
* Date/Publication: 2024-09-04 13:50:02 UTC
* Number of recursive dependencies: 106

Run `revdepcheck::cloud_details(, "tramvs")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/tramvs/new/tramvs.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘tramvs/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'tram', 'cotram'

Packages suggested but not available for checking: 'tramnet', 'mlt'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/tramvs/old/tramvs.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘tramvs/DESCRIPTION’ ... OK
...
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'tram', 'cotram'

Packages suggested but not available for checking: 'tramnet', 'mlt'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# TriDimRegression

<details>

* Version: 1.0.2
* GitHub: https://github.com/alexander-pastukhov/tridim-regression
* Source code: https://github.com/cran/TriDimRegression
* Date/Publication: 2023-09-13 14:10:03 UTC
* Number of recursive dependencies: 99

Run `revdepcheck::cloud_details(, "TriDimRegression")` for more info

</details>

## In both

*   checking whether package ‘TriDimRegression’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/TriDimRegression/new/TriDimRegression.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘TriDimRegression’ ...
** package ‘TriDimRegression’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘TriDimRegression’
* removing ‘/tmp/workdir/TriDimRegression/new/TriDimRegression.Rcheck/TriDimRegression’


```
### CRAN

```
* installing *source* package ‘TriDimRegression’ ...
** package ‘TriDimRegression’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘TriDimRegression’
* removing ‘/tmp/workdir/TriDimRegression/old/TriDimRegression.Rcheck/TriDimRegression’


```
# TSrepr

<details>

* Version: 1.1.0
* GitHub: https://github.com/PetoLau/TSrepr
* Source code: https://github.com/cran/TSrepr
* Date/Publication: 2020-07-13 06:50:15 UTC
* Number of recursive dependencies: 72

Run `revdepcheck::cloud_details(, "TSrepr")` for more info

</details>

## In both

*   checking whether package ‘TSrepr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/TSrepr/new/TSrepr.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘TSrepr’ ...
** package ‘TSrepr’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c FeatureClippingTrending.cpp -o FeatureClippingTrending.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c helpers.cpp -o helpers.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c measures.cpp -o measures.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c normalizations.cpp -o normalizations.o
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘TSrepr’
* removing ‘/tmp/workdir/TSrepr/new/TSrepr.Rcheck/TSrepr’


```
### CRAN

```
* installing *source* package ‘TSrepr’ ...
** package ‘TSrepr’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c FeatureClippingTrending.cpp -o FeatureClippingTrending.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c helpers.cpp -o helpers.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c measures.cpp -o measures.o
g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.3.1/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c normalizations.cpp -o normalizations.o
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘TSrepr’
* removing ‘/tmp/workdir/TSrepr/old/TSrepr.Rcheck/TSrepr’


```
# twang

<details>

* Version: 2.6.1
* GitHub: NA
* Source code: https://github.com/cran/twang
* Date/Publication: 2024-07-22 16:10:01 UTC
* Number of recursive dependencies: 53

Run `revdepcheck::cloud_details(, "twang")` for more info

</details>

## In both

*   checking whether package ‘twang’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/twang/new/twang.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘twang’ ...
** package ‘twang’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c init.c -o init.o
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c ks.c -o ks.o
gcc -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o twang.so init.o ks.o -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/twang/new/twang.Rcheck/00LOCK-twang/00new/twang/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘twang’
* removing ‘/tmp/workdir/twang/new/twang.Rcheck/twang’


```
### CRAN

```
* installing *source* package ‘twang’ ...
** package ‘twang’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c init.c -o init.o
gcc -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c ks.c -o ks.o
gcc -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o twang.so init.o ks.o -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/twang/old/twang.Rcheck/00LOCK-twang/00new/twang/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘twang’
* removing ‘/tmp/workdir/twang/old/twang.Rcheck/twang’


```
# TwitterAutomatedTrading

<details>

* Version: 0.1.0
* GitHub: https://github.com/lucasgodeiro/TwitterAutomatedTrading
* Source code: https://github.com/cran/TwitterAutomatedTrading
* Date/Publication: 2020-05-31 09:50:13 UTC
* Number of recursive dependencies: 66

Run `revdepcheck::cloud_details(, "TwitterAutomatedTrading")` for more info

</details>

## In both

*   checking whether package ‘TwitterAutomatedTrading’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/TwitterAutomatedTrading/new/TwitterAutomatedTrading.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘TwitterAutomatedTrading’ ...
** package ‘TwitterAutomatedTrading’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘rjson’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘TwitterAutomatedTrading’
* removing ‘/tmp/workdir/TwitterAutomatedTrading/new/TwitterAutomatedTrading.Rcheck/TwitterAutomatedTrading’


```
### CRAN

```
* installing *source* package ‘TwitterAutomatedTrading’ ...
** package ‘TwitterAutomatedTrading’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘rjson’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘TwitterAutomatedTrading’
* removing ‘/tmp/workdir/TwitterAutomatedTrading/old/TwitterAutomatedTrading.Rcheck/TwitterAutomatedTrading’


```
# updog

<details>

* Version: 2.1.5
* GitHub: https://github.com/dcgerard/updog
* Source code: https://github.com/cran/updog
* Date/Publication: 2023-11-29 15:50:02 UTC
* Number of recursive dependencies: 138

Run `revdepcheck::cloud_details(, "updog")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/updog/new/updog.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘updog/DESCRIPTION’ ... OK
...
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘multidog.Rmd’ using ‘UTF-8’... OK
  ‘oracle_calculations.Rmd’ using ‘UTF-8’... OK
  ‘simulate_ngs.Rmd’ using ‘UTF-8’... OK
  ‘smells_like_updog.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/updog/old/updog.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘updog/DESCRIPTION’ ... OK
...
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘multidog.Rmd’ using ‘UTF-8’... OK
  ‘oracle_calculations.Rmd’ using ‘UTF-8’... OK
  ‘simulate_ngs.Rmd’ using ‘UTF-8’... OK
  ‘smells_like_updog.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 2 NOTEs





```
# valr

<details>

* Version: 0.8.2
* GitHub: https://github.com/rnabioco/valr
* Source code: https://github.com/cran/valr
* Date/Publication: 2024-08-30 22:10:03 UTC
* Number of recursive dependencies: 176

Run `revdepcheck::cloud_details(, "valr")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/valr/new/valr.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘valr/DESCRIPTION’ ... OK
...
* this is package ‘valr’ version ‘0.8.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘rtracklayer’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/valr/old/valr.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘valr/DESCRIPTION’ ... OK
...
* this is package ‘valr’ version ‘0.8.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘rtracklayer’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# vdg

<details>

* Version: 1.2.3
* GitHub: NA
* Source code: https://github.com/cran/vdg
* Date/Publication: 2024-04-23 13:00:02 UTC
* Number of recursive dependencies: 45

Run `revdepcheck::cloud_details(, "vdg")` for more info

</details>

## In both

*   checking whether package ‘vdg’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/vdg/new/vdg.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘vdg’ ...
** package ‘vdg’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using Fortran compiler: ‘GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
gfortran  -fpic  -g -O2  -c FDS.f -o FDS.o
gcc -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o vdg.so FDS.o -lgfortran -lm -lquadmath -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/vdg/new/vdg.Rcheck/00LOCK-vdg/00new/vdg/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘quantreg’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘vdg’
* removing ‘/tmp/workdir/vdg/new/vdg.Rcheck/vdg’


```
### CRAN

```
* installing *source* package ‘vdg’ ...
** package ‘vdg’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using Fortran compiler: ‘GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0’
gfortran  -fpic  -g -O2  -c FDS.f -o FDS.o
gcc -shared -L/opt/R/4.3.1/lib/R/lib -L/usr/local/lib -o vdg.so FDS.o -lgfortran -lm -lquadmath -L/opt/R/4.3.1/lib/R/lib -lR
installing to /tmp/workdir/vdg/old/vdg.Rcheck/00LOCK-vdg/00new/vdg/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘quantreg’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘vdg’
* removing ‘/tmp/workdir/vdg/old/vdg.Rcheck/vdg’


```
# visa

<details>

* Version: 0.1.0
* GitHub: https://github.com/kang-yu/visa
* Source code: https://github.com/cran/visa
* Date/Publication: 2021-04-20 07:20:02 UTC
* Number of recursive dependencies: 140

Run `revdepcheck::cloud_details(, "visa")` for more info

</details>

## In both

*   checking whether package ‘visa’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/visa/new/visa.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘visa’ ...
** package ‘visa’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘visa’
* removing ‘/tmp/workdir/visa/new/visa.Rcheck/visa’


```
### CRAN

```
* installing *source* package ‘visa’ ...
** package ‘visa’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘visa’
* removing ‘/tmp/workdir/visa/old/visa.Rcheck/visa’


```
# WRTDStidal

<details>

* Version: 1.1.4
* GitHub: https://github.com/fawda123/WRTDStidal
* Source code: https://github.com/cran/WRTDStidal
* Date/Publication: 2023-10-20 09:00:11 UTC
* Number of recursive dependencies: 139

Run `revdepcheck::cloud_details(, "WRTDStidal")` for more info

</details>

## In both

*   checking whether package ‘WRTDStidal’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/WRTDStidal/new/WRTDStidal.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘WRTDStidal’ ...
** package ‘WRTDStidal’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘WRTDStidal’
* removing ‘/tmp/workdir/WRTDStidal/new/WRTDStidal.Rcheck/WRTDStidal’


```
### CRAN

```
* installing *source* package ‘WRTDStidal’ ...
** package ‘WRTDStidal’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Calls: <Anonymous> ... namespaceImportFrom -> asNamespace -> loadNamespace
Execution halted
ERROR: lazy loading failed for package ‘WRTDStidal’
* removing ‘/tmp/workdir/WRTDStidal/old/WRTDStidal.Rcheck/WRTDStidal’


```
# xnet

<details>

* Version: 0.1.11
* GitHub: https://github.com/CenterForStatistics-UGent/xnet
* Source code: https://github.com/cran/xnet
* Date/Publication: 2020-02-03 19:30:02 UTC
* Number of recursive dependencies: 91

Run `revdepcheck::cloud_details(, "xnet")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/xnet/new/xnet.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘xnet/DESCRIPTION’ ... OK
...
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘Preparation_example_data.Rmd’ using ‘UTF-8’... OK
  ‘xnet_ClassStructure.Rmd’ using ‘UTF-8’... OK
  ‘xnet_ShortIntroduction.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/xnet/old/xnet.Rcheck’
* using R version 4.3.1 (2023-06-16)
* using platform: x86_64-pc-linux-gnu (64-bit)
* R was compiled by
    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
    GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* running under: Ubuntu 22.04.4 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘xnet/DESCRIPTION’ ... OK
...
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... OK
  ‘Preparation_example_data.Rmd’ using ‘UTF-8’... OK
  ‘xnet_ClassStructure.Rmd’ using ‘UTF-8’... OK
  ‘xnet_ShortIntroduction.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
# yarrr

<details>

* Version: 0.1.5
* GitHub: https://github.com/ndphillips/yarrr
* Source code: https://github.com/cran/yarrr
* Date/Publication: 2017-04-19 08:39:31 UTC
* Number of recursive dependencies: 49

Run `revdepcheck::cloud_details(, "yarrr")` for more info

</details>

## In both

*   checking whether package ‘yarrr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/yarrr/new/yarrr.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘yarrr’ ...
** package ‘yarrr’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘BayesFactor’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘yarrr’
* removing ‘/tmp/workdir/yarrr/new/yarrr.Rcheck/yarrr’


```
### CRAN

```
* installing *source* package ‘yarrr’ ...
** package ‘yarrr’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘BayesFactor’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 namespace ‘Matrix’ 1.5-4.1 is already loaded, but >= 1.6.0 is required
Execution halted
ERROR: lazy loading failed for package ‘yarrr’
* removing ‘/tmp/workdir/yarrr/old/yarrr.Rcheck/yarrr’


```
# zen4R

<details>

* Version: 0.10
* GitHub: https://github.com/eblondel/zen4R
* Source code: https://github.com/cran/zen4R
* Date/Publication: 2024-06-05 16:50:02 UTC
* Number of recursive dependencies: 75

Run `revdepcheck::cloud_details(, "zen4R")` for more info

</details>

## In both

*   checking whether package ‘zen4R’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/zen4R/new/zen4R.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘zen4R’ ...
** package ‘zen4R’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.3.1/lib/R/site-library/redland/libs/redland.so':
  librdf.so.0: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... asNamespace -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘zen4R’
* removing ‘/tmp/workdir/zen4R/new/zen4R.Rcheck/zen4R’


```
### CRAN

```
* installing *source* package ‘zen4R’ ...
** package ‘zen4R’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.3.1/lib/R/site-library/redland/libs/redland.so':
  librdf.so.0: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... asNamespace -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘zen4R’
* removing ‘/tmp/workdir/zen4R/old/zen4R.Rcheck/zen4R’


```

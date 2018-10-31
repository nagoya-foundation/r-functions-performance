# r-functions-performance

This repo was created with the purpose of studying performance of different functions that can be used to obtain the same result.

## How it Works

We are using "Melbourne Housing Market" public dataset provided by [Kaggle](https://www.kaggle.com/anthonypino/melbourne-housing-market) with 60.7k observations and 13 columns to test some functions.

We run the selected function 1000 times over one column using [microbenchmark R package](https://github.com/joshuaulrich/microbenchmark/) and use `summary()` to analyse the difference in milliseconds between the functions.

## Performance Result


### subset functions

Subset column in dataframe

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
base1 | 1000 | ms | 0.046 | 0.070 | 0.029 |   7.155 | 0.051 | 0.069
base2 | 1000 | ms | 0.046 | 0.070 | 0.028 |   0.719 | 0.051 | 0.062
select | 1000 | ms | 3.026 | 3.385 | 2.300 | 171.330 | 3.163 | 3.603

### to string functions

Convert column as character

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
as.character | 1000 | ms |  9.294 |  9.561 |  8.753 |  26.156 |  9.417 |  9.670
formatC | 1000 | ms | 18.431 | 20.064 | 17.091 | 149.821 | 18.836 | 20.896
paste | 1000 | ms | 14.372 | 14.779 | 13.418 |  32.034 | 14.562 | 14.937
toString | 1000 | ms | 16.637 | 17.086 | 15.707 |  41.926 | 16.866 | 17.279
sprintf | 1000 | ms | 17.489 | 17.929 | 16.577 |  44.356 | 17.697 | 18.154

### mapping functions

Apply a specific function to a list or vector.

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
lapply | 1000 | ms | 24.797 | 36.303 | 21.462 | 177.460 | 25.461 | 29.437
sapply | 1000 | ms | 45.477 | 57.340 | 41.955 | 191.467 | 46.537 | 50.650
map | 1000 | ms | 59.256 | 71.623 | 54.824 | 216.958 | 69.014 | 69.942
map_chr | 1000 | ms | 60.548 | 70.826 | 49.809 | 228.917 | 68.514 | 69.210

### to date functions

Convert column to date format

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
lubridate | 1000 | ms | 15.960 | 25.373 | 15.044 | 149.830 | 17.809 | 22.262
to.date | 1000 | ms | 26.657 | 28.798 | 24.899 | 160.471 | 26.957 | 30.054
strptime | 1000 | ms | 80.131 | 82.893 | 77.475 | 346.436 | 81.040 | 84.660

### simple pattern matching functions

Find a simple pattern in a string, and return the subset

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
grep | 1000 | ms |  15.600 |  16.477 |  14.167 |  33.731 |  16.051 |  16.171
regexpr | 1000 | ms |  20.181 |  21.236 |  18.470 | 158.691 |  20.637 |  21.587
sqldf | 1000 | ms | 206.089 | 215.534 | 197.608 | 351.085 | 209.091 | 211.285

## License

r-functions-performance is [MIT Licensed](LICENSE).
censed](LICENSE).

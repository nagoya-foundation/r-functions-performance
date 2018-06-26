# r-functions-performance

This repo was created with the purpose of studying performance of different functions that can be used to obtain the same result.

## Table of content
* [How it Works](#how-it-works)
* [Performance Result](#performance-result)
  * [subset](#subset-functions)
  * [to string](#to-string-functions)
* [Winners](#winners)

## How it Works

We are using "Airplane Crashes and Fatalities Since 1908" public dataset provided by [Open Data by Socrata](https://opendata.socrata.com/Government/Airplane-Crashes-and-Fatalities-Since-1908/q2te-8cvq) with 5268 observations and 13 columns to test some functions.

We run the selected function 1000 times over one column using [microbenchmark R package](https://github.com/joshuaulrich/microbenchmark/) and use `summary()` to analyse the difference in milliseconds between the functions.

## Performance Result

### subset functions

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
base1 | 1000 | ms | 0.033 | 0.082 | 0.030 |  0.148 | 0.036 | 0.052
base2 | 1000 | ms | 0.033 | 0.082 | 0.030 |  0.214 | 0.036 | 0.052
select | 1000 | ms | 7.286 | 7.910 | 6.987 | 22.259 | 7.487 | 8.003

### to string functions

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
as.character | 1000 | ms | 1.882 | 1.959 | 1.844 |   6.781 | 1.912 | 1.963
formatC | 1000 | ms | 1.983 | 2.108 | 1.904 | 100.387 | 2.033 | 2.286
paste | 1000 | ms | 2.534 | 2.625 | 2.500 |   7.157 | 2.569 | 2.622
toString | 1000 | ms | 2.797 | 2.904 | 2.711 |   7.641 | 2.836 | 2.891
sprintf | 1000 | ms | 2.957 | 3.060 | 2.916 |   7.285 | 2.998 | 3.047

## Winners

purpose | winner | avg time
--- | --- | ---
subset | data[col_number] | 0.052 ms
convert to string | as.character | 0.014 ms

## License

r-functions-performance is [MIT Licensed](LICENSE).

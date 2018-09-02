# r-functions-performance

This repo was created with the purpose of studying performance of different functions that can be used to obtain the same result.

## How it Works

We are using "Airplane Crashes and Fatalities Since 1908" public dataset provided by [Open Data by Socrata](https://opendata.socrata.com/Government/Airplane-Crashes-and-Fatalities-Since-1908/q2te-8cvq) with 5268 observations and 13 columns to test some functions.

We run the selected function 1000 times over one column using [microbenchmark R package](https://github.com/joshuaulrich/microbenchmark/) and use `summary()` to analyse the difference in milliseconds between the functions.

## Performance Result

### subset functions

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
base1 | 1000 | ms | 0.031 | 0.063 | 0.026 |  4.542 | 0.036 | 0.055
base2 | 1000 | ms | 0.030 | 0.064 | 0.026 |  0.885 | 0.037 | 0.047
select | 1000 | ms | 2.851 | 3.187 | 2.592 | 34.793 | 2.996 | 3.331
### to string functions

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
as.character | 1000 | ms | 0.032 | 0.048 | 0.008 | 0.473 | 0.037 | 0.038
formatC | 1000 | ms | 2.666 | 3.272 | 2.332 | 9.221 | 3.158 | 3.186
paste | 1000 | ms | 1.340 | 1.638 | 1.099 | 5.776 | 1.596 | 1.552
toString | 1000 | ms | 1.677 | 2.052 | 1.382 | 4.185 | 1.999 | 1.938
sprintf | 1000 | ms | 1.963 | 2.400 | 1.504 | 8.490 | 2.316 | 2.270
### mapping functions

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
map | 1000 | ms | 7.401 | 7.738 | 6.505 | 75.331 | 7.533 | 8.424
lapply | 1000 | ms | 3.275 | 3.371 | 2.910 | 12.047 | 3.319 | 3.581
map_chr | 1000 | ms | 7.479 | 7.792 | 6.776 | 74.565 | 7.603 | 8.442
sapply | 1000 | ms | 4.537 | 4.685 | 3.998 | 30.206 | 4.600 | 4.922

## License

r-functions-performance is [MIT Licensed](LICENSE).

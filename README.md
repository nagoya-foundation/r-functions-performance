# r-functions-performance

This repo was created with the purpose of studying performance of different functions that can be used to obtain the same result.

## How it Works

We are using "Melbourne Housing Market" public dataset provided by [Kaggle](https://www.kaggle.com/anthonypino/melbourne-housing-market) with 60.7k observations and 13 columns to test some functions.

We run the selected function 1000 times over one column using [microbenchmark R package](https://github.com/joshuaulrich/microbenchmark/) and use `summary()` to analyse the difference in milliseconds between the functions.

## Performance Result


### load csv functions

Load a .csv file into an R object (data frame/tibble/etc.)

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
fread | 100 | ms |  38.250 |  52.078 |  37.182 |  244.789 |  41.062 |  48.074
import | 100 | ms |  39.385 |  55.187 |  38.124 |   92.511 |  46.186 |  49.661
read.csv | 100 | ms | 508.648 | 585.146 | 488.136 | 1173.685 | 532.987 | 570.243
read_csv | 100 | ms | 161.373 | 191.777 | 133.286 |  678.702 | 173.806 | 189.244

### mapping functions

Apply a specific function to a list or vector.

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
lapply | 1000 | ms | 12.205 | 13.952 | 11.714 | 212.913 | 12.494 | 14.894
sapply | 1000 | ms | 15.154 | 17.356 | 14.404 |  56.467 | 15.541 | 17.657
map | 1000 | ms | 26.620 | 37.616 | 25.654 | 223.574 | 28.354 | 33.111
map_chr | 1000 | ms | 27.417 | 38.271 | 26.093 | 225.453 | 29.188 | 33.753

### simple pattern matching functions

Find a simple pattern in a string, and return the subset

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
grep | 1000 | ms |   5.233 |   5.947 |   4.837 |  34.422 |   5.447 |   6.096
regexpr | 1000 | ms |   8.224 |   9.052 |   7.715 |  52.361 |   8.467 |   9.568
sqldf | 1000 | ms | 118.596 | 133.969 | 114.072 | 461.028 | 121.131 | 137.014

### subset functions

Subset column in dataframe

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
base1 | 1000 | ms | 0.017 | 0.033 | 0.015 |  0.105 | 0.021 | 0.026
base2 | 1000 | ms | 0.017 | 0.032 | 0.015 |  0.203 | 0.021 | 0.026
select | 1000 | ms | 1.506 | 1.637 | 1.432 | 33.489 | 1.554 | 1.704

### to date functions

Convert column to date format

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
lubridate | 1000 | ms |   7.370 |   9.153 |   6.963 | 202.276 |   7.705 |   9.787
to.date | 1000 | ms |  14.633 |  16.840 |  14.011 |  57.368 |  15.083 |  17.058
strptime | 1000 | ms | 212.153 | 236.698 | 205.226 | 464.125 | 216.453 | 234.386

### to string functions

Convert column as character

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
as.character | 1000 | ms |  0.028 |  0.045 |  0.006 |  10.563 |  0.038 |  0.048
formatC | 1000 | ms | 13.551 | 14.481 | 12.711 |  62.413 | 13.822 | 15.167
paste | 1000 | ms | 14.609 | 15.289 | 14.030 | 207.284 | 14.801 | 16.277
toString | 1000 | ms | 16.162 | 16.837 | 15.549 |  58.643 | 16.381 | 17.780
sprintf | 1000 | ms | 18.049 | 18.847 | 17.456 |  58.991 | 18.274 | 19.786

## License

r-functions-performance is [MIT Licensed](LICENSE).

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
base1 | 1000 | ms | 0.034 | 0.083 | 0.030 |   0.317 | 0.037 | 0.054
base2 | 1000 | ms | 0.034 | 0.084 | 0.030 |  12.356 | 0.038 | 0.069
select | 1000 | ms | 7.397 | 9.112 | 7.154 | 117.835 | 7.693 | 9.237

### to string functions

Convert column as character

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
as.character | 1000 | ms | 11.381 | 11.803 | 11.155 | 109.816 | 11.527 | 12.487
formatC | 1000 | ms | 20.783 | 25.288 | 20.333 | 126.690 | 21.537 | 24.003
paste | 1000 | ms | 16.334 | 17.120 | 16.052 | 127.471 | 16.540 | 18.391
toString | 1000 | ms | 18.988 | 19.713 | 18.669 | 123.275 | 19.162 | 21.147
sprintf | 1000 | ms | 19.326 | 19.993 | 19.030 |  94.103 | 19.512 | 21.106

### mapping functions

Apply a specific function to a list or vector.

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
lapply | 1000 | ms | 16.201 | 22.376 | 15.457 | 143.600 | 16.695 | 19.597
sapply | 1000 | ms | 22.254 | 27.683 | 21.167 | 140.825 | 22.796 | 25.096
map | 1000 | ms | 42.272 | 47.264 | 36.558 | 170.779 | 45.270 | 45.861
map_chr | 1000 | ms | 41.689 | 48.644 | 38.376 | 185.197 | 46.625 | 48.241

### to date functions

Convert column to date format

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
lubridate | 1000 | ms |  13.909 |  18.721 |  13.514 | 165.333 |  18.283 |  18.745
to.date | 1000 | ms |  29.125 |  33.431 |  28.296 | 133.738 |  29.570 |  31.945
strptime | 1000 | ms | 106.305 | 111.204 | 104.555 | 347.292 | 108.133 | 113.861

## License

r-functions-performance is [MIT Licensed](LICENSE).

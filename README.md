# r-functions-performance

This repo was created with the purpose of studying performance of different functions that can be used to obtain the same result.

## How it Works

We are using "Melbourne Housing Market" public dataset provided by [Kaggle](https://www.kaggle.com/anthonypino/melbourne-housing-market) with 60.7k observations and 13 columns to test some functions.

We run the selected function 1000 times over one column using [microbenchmark R package](https://github.com/joshuaulrich/microbenchmark/) and use `summary()` to analyse the difference in milliseconds between the functions.

## Performance Result

### subset functions

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
base1 | 1000 | ms | 0.047 | 0.096 | 0.042 |  5.078 | 0.059 | 0.076
base2 | 1000 | ms | 0.048 | 0.096 | 0.043 |  0.813 | 0.060 | 0.074
select | 1000 | ms | 3.843 | 4.194 | 3.722 | 42.767 | 3.913 | 4.357
### to string functions

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
as.character | 1000 | ms | 19.100 | 19.760 | 18.472 |  78.002 | 19.339 | 19.926
formatC | 1000 | ms | 58.094 | 62.879 | 54.307 | 541.974 | 59.277 | 62.759
paste | 1000 | ms | 34.049 | 35.636 | 32.764 |  67.889 | 34.464 | 35.594
toString | 1000 | ms | 40.910 | 42.728 | 39.435 | 319.639 | 41.527 | 43.074
sprintf | 1000 | ms | 39.511 | 41.355 | 38.248 | 168.466 | 40.016 | 41.510
### mapping functions

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
lapply | 1000 | ms | 36.214 | 45.979 | 35.176 |  235.660 | 37.565 | 42.283
sapply | 1000 | ms | 46.963 | 56.449 | 45.100 |  241.836 | 49.055 | 53.820
map | 1000 | ms | 83.400 | 91.178 | 74.231 | 1064.335 | 87.102 | 91.652
map_chr | 1000 | ms | 83.841 | 90.274 | 75.102 |  305.951 | 87.319 | 90.108

## License

r-functions-performance is [MIT Licensed](LICENSE).

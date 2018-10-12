# r-functions-performance

This repo was created with the purpose of studying performance of different functions that can be used to obtain the same result.

## How it Works

We are using "Melbourne Housing Market" public dataset provided by [Kaggle](https://www.kaggle.com/anthonypino/melbourne-housing-market) with 60.7k observations and 13 columns to test some functions.

We run the selected function 1000 times over one column using [microbenchmark R package](https://github.com/joshuaulrich/microbenchmark/) and use `summary()` to analyse the difference in milliseconds between the functions.

## Performance Result

### subset functions

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
base1 | 1000 | ms | 0.012 | 0.022 | 0.009 |  0.087 | 0.014 | 0.017
base2 | 1000 | ms | 0.012 | 0.022 | 0.009 |  0.084 | 0.014 | 0.017
select | 1000 | ms | 1.121 | 1.261 | 1.047 | 11.578 | 1.173 | 1.399
### to string functions

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
as.character | 1000 | ms |  0.010 |  0.025 |  0.005 |  6.708 |  0.015 |  0.026
formatC | 1000 | ms | 12.026 | 13.042 | 11.207 | 74.861 | 12.367 | 13.078
paste | 1000 | ms |  8.742 |  9.116 |  8.499 | 23.309 |  8.858 |  9.107
toString | 1000 | ms | 10.250 | 10.654 |  9.948 | 24.769 | 10.421 | 10.655
sprintf | 1000 | ms | 10.000 | 10.340 |  9.772 | 18.721 | 10.117 | 10.360
### mapping functions

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
lapply | 1000 | ms |  8.218 | 12.989 |  7.809 | 75.571 |  8.597 | 10.380
sapply | 1000 | ms | 10.617 | 15.256 |  9.926 | 76.743 | 11.218 | 12.902
map | 1000 | ms | 18.477 | 23.980 | 16.062 | 86.743 | 22.677 | 22.671
map_chr | 1000 | ms | 19.087 | 23.831 | 16.611 | 89.439 | 22.746 | 22.599
### to_date functions

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
lubridate | 1000 | ms | 7.863 | 8.657 | 6.940 | 83.764 | 8.023 | 9.430
to.date | 1000 | ms | 6.357 | 6.689 | 5.450 | 17.078 | 6.431 | 7.061
strptime | 1000 | ms | 5.678 | 5.921 | 4.933 | 66.220 | 5.737 | 6.280

## License

r-functions-performance is [MIT Licensed](LICENSE).

# r-functions-performance

This repo was created with the purpose of studying performance of different functions that can be used to obtain the same result.

## How it Works

We are using "Airplane Crashes and Fatalities Since 1908" public dataset provided by [Open Data by Socrata](https://opendata.socrata.com/Government/Airplane-Crashes-and-Fatalities-Since-1908/q2te-8cvq) with 5268 observations and 13 columns to test some functions.

We run the selected function 1000 times over one column using [microbenchmark R package](https://github.com/joshuaulrich/microbenchmark/) and use `summary()` to analyse the difference in milliseconds between the functions.

## Performance Result

### subset functions

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
base1 | 1000 | ms | 0.033 | 0.082 | 0.030 |   6.090 | 0.037 | 0.065
base2 | 1000 | ms | 0.034 | 0.083 | 0.030 |   0.180 | 0.037 | 0.052
select | 1000 | ms | 7.177 | 8.221 | 6.945 | 267.666 | 7.425 | 8.415
### to string functions

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
as.character | 1000 | ms | 1.854 | 1.926 | 1.839 | 13.172 | 1.881 | 1.975
formatC | 1000 | ms | 1.997 | 2.109 | 1.942 | 13.562 | 2.035 | 2.214
paste | 1000 | ms | 2.493 | 2.589 | 2.464 |  8.950 | 2.533 | 2.626
toString | 1000 | ms | 2.741 | 2.839 | 2.700 | 10.301 | 2.784 | 2.895
sprintf | 1000 | ms | 2.938 | 3.035 | 2.906 | 10.553 | 2.981 | 3.057

## License

r-functions-performance is [MIT Licensed](LICENSE).

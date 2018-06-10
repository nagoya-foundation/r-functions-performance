# r-functions-performance

This repo was created with the purpose of studying performance of different functions that can be used to obtain the same result.

## Requirements

- R (> 3.2);
- [microbenchmark R package](https://github.com/joshuaulrich/microbenchmark/).

### Instructions

To install R in your system check its [official site](https://www.r-project.org/), R is available in a number of platforms. Then start R and type `install.packages('microbenchmark')` and select a mirror.

## How it works

We are using "Airplane Crashes and Fatalities Since 1908" public dataset provided by [Open Data by Socrata](https://opendata.socrata.com/Government/Airplane-Crashes-and-Fatalities-Since-1908/q2te-8cvq) with 5268 observations and 13 columns to test some functions.

We run the selected function 1000 times over one column and use `summary()` to analyse the difference in milliseconds between the functions.

## Example

### to string functions

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
as.character | 1000 | ms | 1.857 | 1.933 | 1.839 | 6.425 | 1.878 | 2.009
paste | 1000 | ms | 2.494 | 2.587 | 2.459 |  7.096 | 2.524 | 2.652
toString | 1000 | ms | 2.747 | 2.852 | 2.705 |  7.831 | 2.782 | 2.896
sprintf | 1000 | ms | 2.900 | 3.015 | 2.866 |  7.407 | 2.936 | 3.045

## License

r-functions-performance is [MIT Licensed](LICENSE).

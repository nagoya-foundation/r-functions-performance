# r-functions-performance

This repo was created with the purpose of studying performance of different functions that can be used to obtain the same result.

## Requirements

- R (> 3.2);
- microbenchmark R package.

### Instructions

To install R in your system check its [official site](https://www.r-project.org/), R is available in a number of platforms. Then start R and type `install.packages('microbenchmark')` and select a mirror.

## How it works

We are using "Airplane Crashes and Fatalities Since 1908" public dataset provided by [Open Data by Socrata](https://opendata.socrata.com/Government/Airplane-Crashes-and-Fatalities-Since-1908/q2te-8cvq) with 5268 observations and 13 columns to test some functions.

We run the selected function 1000 times over one column and use `summary()` to analyse the difference in milliseconds between the functions.

## Example

### to string functions

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
as.character | 1000 | ms | 1.802 | 1.883 | 1.789 | 12.236 | 1.820 | 1.929
paste | 1000 | ms | 2.351 | 2.442 | 2.326 | 12.020 | 2.382 | 2.483
toString | 1000 | ms | 2.605 | 2.719 | 2.572 | 13.181 | 2.643 | 2.780

## License

r-functions-performance is [MIT Licensed](LICENSE).

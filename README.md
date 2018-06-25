# r-functions-performance

This repo was created with the purpose of studying performance of different functions that can be used to obtain the same result.

## Table of content
* [How it Works](#how-it-works)
* [Performance Result](#performance-result)
  * [to string](#to-string-functions)
* [Winners](#winners)

## How it Works

We are using "Airplane Crashes and Fatalities Since 1908" public dataset provided by [Open Data by Socrata](https://opendata.socrata.com/Government/Airplane-Crashes-and-Fatalities-Since-1908/q2te-8cvq) with 5268 observations and 13 columns to test some functions.

We run the selected function 1000 times over one column using [microbenchmark R package](https://github.com/joshuaulrich/microbenchmark/) and use `summary()` to analyse the difference in milliseconds between the functions.

## Performance Result

### to string Functions

function | times | unit | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | --- | ---
as.character | 1000 | ms | 0.011 | 0.014 | 0.009 | 0.105 | 0.011 | 0.014
paste | 1000 | ms | 0.012 | 0.017 | 0.010 | 0.130 | 0.013 | 0.016
toString | 1000 | ms | 0.014 | 0.021 | 0.013 | 0.127 | 0.016 | 0.019
sprintf | 1000 | ms | 0.011 | 0.015 | 0.009 | 0.652 | 0.012 | 0.015
formatC | 1000 | ms | 0.015 | 0.021 | 0.013 | 1.940 | 0.016 | 0.021

## Winners

purpose | winner | avg time
--- | --- | ---
convert to string | as.character | 0.014 ms

## License

r-functions-performance is [MIT Licensed](LICENSE).

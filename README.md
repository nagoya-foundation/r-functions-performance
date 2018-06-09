# r-sintax-performance

This repo was created with the purpose of studying performance of different functions that can be used to obtain the same result.

## How it works

We are using "Airplane Crashes and Fatalities Since 1908" public dataset provided by [Open Data by Socrata](https://opendata.socrata.com/Government/Airplane-Crashes-and-Fatalities-Since-1908/q2te-8cvq).

## Example

### to string functions

function | times | lq | uq | min | max | median | avg
--- | --- | --- | --- | --- | --- | --- | ---
as.character | 1000 | 1.887 | 2.016 | 1.857 |  8.423 | 1.930 | 2.024
paste | 1000 | 2.506 | 2.639 | 2.468 |  7.946 | 2.550 | 2.655
toString | 1000 | 2.781 | 2.944 | 2.725 | 10.801 | 2.827 | 2.972

## License

r-sintax-performance is [MIT Licensed](LICENSE).

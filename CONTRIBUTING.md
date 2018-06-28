# Contributing guidelines

Thanks for taking the time to contribute!

## Code of Conduct 

Everyone participating in this project is governed by our [code of conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.

## How to contribute

We are open to any kind of contribution, so feel free to develop with us.

if you want to help finding functions that have the same output when used the same input, there are two ways to help. Creating a issue with the related function cluster or doing a pull request with your cluster suggestion. Both ways are very helpfull, if you decide to write some code, the rest of this section is here to help you to do it.

First of all, open our project `r-functions-performance.Rproj` in RStudio, this will help you to follow our code guides.

Our `src folder` contains a `main.R`and all analysed functions and we need a lot of help to maintain it. If you are adding a new cluster of function, create a file `analysis_cluster_name.R` like the others and use the following code as example.

```R
# Mircrobenchmark
mb <- microbenchmark(
	as.character = as.character(r$Fatalities),
	formatC = formatC(r$Fatalities),
	paste = paste(r$Fatalities),
	toString = toString(r$Fatalities),
	sprintf = sprintf("%s", r$Fatalities),
	times = 1000L,
	unit = "ms"
)

# Print markdown table
paste("### cluster_name", "", to_markdown(mb), sep = "\n")
```

After that, add `append(source("./src/analysis_cluster_name.R")$value) %>%` in [main.R](src/main.R) following file name alphabetical order. Then, run `main.R` to update [README](README.md).


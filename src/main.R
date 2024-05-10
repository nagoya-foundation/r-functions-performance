#! /usr/bin/Rscript

# --------------------------------------------------------------------------- #
# Main function of the project, here we run all benchmarks and export the res -
# ults to the readme file.
#
# Copyright (c) 2018 Nagoya Foundation
# --------------------------------------------------------------------------- #
install.packages(c('microbenchmark','dplyr','purrr','lubridate','sqldf','rio','data.table','readr'))
library(microbenchmark)
library(dplyr)
library(purrr)
library(lubridate)
library(sqldf)
library(rio)
library(data.table)#To be able execute fread()command
library(readr)#To be able execute read_csv()command
source("./utils/to_markdown.R")

# Get data
r <- read.csv(
	"./data/Melbourne_housing_FULL.csv",
	stringsAsFactors = F
)

# Call analysed functions and append to results vector
analysed_results <- "" %>%
	append(source("./src/analysis_load_csv.R")$value) %>%
	append(source("./src/analysis_mapping.R")$value) %>%
	append(source("./src/analysis_simple_pattern_matching.R")$value) %>%
	append(source("./src/analysis_subset.R")$value) %>%
	append(source("./src/analysis_to_date.R")$value) %>%
	append(source("./src/analysis_to_string.R")$value) %>%
	append("")

# Open readme read + write
f <- file("./README.md", "r+")

# Read all lines
readme <- readLines(f)

# Store new performance result in result variable 
result <- ""
flag <- 0
for (line in readme) {
	if(flag == 0 || line == "## License") {
		
		flag <- 0
		result <- append(result, line)
		
		# Arrived performance section
		if(line == "## Performance Result") {
			result <- append(result, analysed_results)
			flag <- 1
		}
	}
}

# Remove "" from result
result <- result[-1]

# Write new readme
write(result, f)

# Close Connection 
close(f)

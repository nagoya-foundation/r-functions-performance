#! /usr/bin/Rscript

# --------------------------------------------------------------------------- #
# Main function of the project, here we run all benchmarks and export the res -
# ults to the readme file.
#
# Copyright (c) 2018 Nagoya Foundation
# --------------------------------------------------------------------------- #

library(microbenchmark)
library(dplyr)
source("./utils/to_markdown.R")
source("./utils/write_readme.R")

# Get data
r <- read.csv(
	"./data/Airplane_Crashes_and_Fatalities_Since_1908.csv",
	stringsAsFactors = F
)

# Call functions to analyze and print it to markdown
source("./src/analysis_subset.R")
source("./src/analysis_to_string.R")


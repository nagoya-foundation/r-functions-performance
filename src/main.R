library(microbenchmark)
source("./tools/to_markdown.R")

# Get data
r <- read.csv(
	"./data/Airplane_Crashes_and_Fatalities_Since_1908.csv",
	stringsAsFactors = F
)


# Call functions to analyse and print it to markdown
source("./src/analyse_to_string.R")

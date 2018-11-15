description <- "Load a .csv file into an R object (data frame/tibble/etc.)"

# Microbenchmark
mb <- microbenchmark(
	fread = fread("./data/Melbourne_housing_FULL.csv"),
	import = import("./data/Melbourne_housing_FULL.csv"),
	read.csv = read.csv("./data/Melbourne_housing_FULL.csv"),
	read_csv = read_csv("./data/Melbourne_housing_FULL.csv")
)

# Print markdown table
paste("\n### load csv functions\n", description, "", to_markdown(mb), sep = "\n")
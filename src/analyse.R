library(microbenchmark)

# Get data
r <- read.csv(paste0(getwd(), "/data/Airplane_Crashes_and_Fatalities_Since_1908.csv"))

# Convert microbenchmark to markdown sintax
to_markdown <- function(mb) {
	mb <- summary(mb)
	
	# Change column names
	names(mb) <- c("function", "min", "lq", "avg", "median", "uq", "max", "times")
	
	# Reorder columns
	mb <- mb[, c(1, 8, 3, 6, 2, 7, 5, 4)]
	
	# Round numbers
	mb[3:8] <- round(mb[3:8], 3)
	
	# Create table header
	table_header <- paste(names(mb), collapse = " | ")
	
	# Create header separator
	table_sep <- paste(sprintf("---", seq(ncol(mb))), collapse = " | ")
	
	# Create table body
	table_body <- apply(mb, 1, paste, collapse = " | ")
	
	cat(table_header, table_sep, table_body, sep = "\n")
}

# Mircrobenchmark example
mb <- microbenchmark(
	as.character = as.character(r$Fatalities),
	paste = paste(r$Fatalities),
	toString = toString(r$Fatalities),
	times = 1000L,
	unit = "ms"
)

# print markdown table
to_markdown(mb)

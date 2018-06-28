# Convert microbenchmark to markdown sintax
to_markdown <- function(mb) {
	mb <- summary(mb)
	
	# Add milliseconds column
	mb$unit <- "ms"
	
	# Change column names
	names(mb) <- c("function", "min", "lq", "avg", 
		       "median", "uq", "max", "times", "unit")
	
	# Reorder columns
	mb <- mb[, c(1, 8, 9, 3, 6, 2, 7, 5, 4)]
	
	# Round numbers
	mb[4:9] <- round(mb[4:9], 3)
	
	# Create table header
	table_header <- paste(names(mb), collapse = " | ")
	
	# Create header separator
	table_sep <- paste(sprintf("---", seq(ncol(mb))), collapse = " | ")
	
	# Create table body
	table_body <- apply(mb, 1, paste, collapse = " | ")
	table_body <- paste(table_body, collapse = "\n")
	
	# Return
	return(paste(table_header, table_sep, table_body, sep = "\n"))
}
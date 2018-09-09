# Mircrobenchmark
mb <- microbenchmark(
	lapply = lapply(r$Operator, as.character),
	sapply = sapply(r$Operator, as.character),   # the output here will be a char vector
	map = map(r$Operator, as.character),
	map_chr = map_chr(r$Operator, as.character), # the output here will be a char vector
	times = 1000L,
	unit = "ms"
)

# Print markdown table
paste("### mapping functions", "", to_markdown(mb), sep = "\n")

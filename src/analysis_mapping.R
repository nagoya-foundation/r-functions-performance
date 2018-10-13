description <- "Apply a specific function to a list or vector."

# Mircrobenchmark
mb <- microbenchmark(
	lapply = lapply(r$CouncilArea, as.character),
	sapply = sapply(r$CouncilArea, as.character),   # the output here will be a char vector
	map = map(r$CouncilArea, as.character),
	map_chr = map_chr(r$CouncilArea, as.character), # the output here will be a char vector
	times = 1000L,
	unit = "ms"
)

# Print markdown table
paste("\n### mapping functions\n", description, "", to_markdown(mb), sep = "\n")

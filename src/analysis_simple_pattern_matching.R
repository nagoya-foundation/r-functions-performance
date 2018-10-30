description <- "Find a simple pattern in a string, and return the subset"

# Mircrobenchmark
mb <- microbenchmark(
	grep = r[grep("wood", r$Address),],
	regexpr = r[regexpr("wood", r$Address) > -1,],
	sqldf = sqldf("select * from r where Address like '%wood%'"),
	times = 1000L,
	unit = "ms"
)

# Print markdown table
paste("\n### simple pattern matching functions\n", description, "", to_markdown(mb), sep = "\n")


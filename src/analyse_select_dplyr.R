library(dplyr)

# Mircrobenchmark
mb <- microbenchmark(
	select = select(r, Fatalities),
	base1 = r[11],
	base2 = r['Fatalities'],
	times = 1000L,
	unit = "ms"
)

# Print markdown table
cat("### select functions", "", to_markdown(mb), "", sep = "\n")

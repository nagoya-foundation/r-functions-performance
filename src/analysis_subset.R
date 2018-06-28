# Mircrobenchmark
mb <- microbenchmark(
	base1 = r[11],
	base2 = r['Fatalities'],
	select = select(r, Fatalities),
	times = 1000L,
	unit = "ms"
)

# Print markdown table
paste("### subset functions", "", to_markdown(mb), sep = "\n")

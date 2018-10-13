description <- "Subset column in dataframe"

# Mircrobenchmark
mb <- microbenchmark(
	base1 = r[5],
	base2 = r['Price'],
	select = select(r, Price),
	times = 1000L,
	unit = "ms"
)

# Print markdown table
paste("\n### subset functions\n", description, "", to_markdown(mb), sep = "\n")

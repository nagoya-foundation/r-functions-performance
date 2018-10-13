description <- "Convert column as character"

# Mircrobenchmark
mb <- microbenchmark(
	as.character = as.character(r$Price),
	formatC = formatC(r$Price),
	paste = paste(r$Price),
	toString = toString(r$Price),
	sprintf = sprintf("%s", r$Price),
	times = 1000L,
	unit = "ms"
)

# Print markdown table
paste("\n### to string functions\n", description, "", to_markdown(mb), sep = "\n")

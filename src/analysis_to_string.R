# Mircrobenchmark
mb <- microbenchmark(
	as.character = as.character(r$Fatalities),
	formatC = formatC(r$Fatalities),
	paste = paste(r$Fatalities),
	toString = toString(r$Fatalities),
	sprintf = sprintf("%s", r$Fatalities),
	times = 1000L,
	unit = "ms"
)

# Print markdown table
paste("### to string functions", "", to_markdown(mb), sep = "\n")

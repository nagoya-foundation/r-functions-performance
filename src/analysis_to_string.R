# Mircrobenchmark
mb <- microbenchmark(
	as.character = as.character(r$Fatalities),
	paste = paste(r$Fatalities),
	toString = toString(r$Fatalities),
	sprintf = sprintf("%s", r$Fatalities),
	formatC = formatC(r$Fatalities),
	times = 10L,
	unit = "ms"
)

# Print markdown table
cat("### to string functions", "", to_markdown(mb), "", sep = "\n")

description <- "Convert column to date format"

# Mircrobenchmark
mb <- microbenchmark(
	lubridate = dmy(r$Date),
	to.date = as.Date(r$Date, '%d/%m/%Y'),   # the output here will be a char vector
	strptime = strptime(r$Date, '%d/%m/%Y'),
	times = 1000L,
	unit = "ms"
)

# Print markdown table
paste("\n### to date functions\n", description, "", to_markdown(mb), sep = "\n")


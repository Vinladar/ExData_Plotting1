library(dplyr)
library(lubridate)

# This function is a helper function that loads the data and formats the date correctly.
# Since multiple R files require this data set, this function is used to avoid writing identical code in multiple files.

dataSetup <- function() {
	# Read in the text file with a header and using ";" as the column seperator
	data <- read.table("../household_power_consumption.txt", header = TRUE, sep = ";")

	# filters the rows to only include the two days
	data <- filter(data, Date == "1/2/2007" | Date == "2/2/2007")

	# Reformats the date
	data$Date <- dmy(data$Date)

	# Creates a new column that contains the date and time.
	data$dateTime <- paste(data$Date, data$Time)

	# Reformats the date and time and stores it in the Date column
	data$Date <- strptime(data$dateTime, format("%Y-%m-%d %H:%M:%S"))

	data
}
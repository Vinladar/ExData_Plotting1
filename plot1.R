library(dplyr)
library(lubridate)

# Read in the text file with a header and using ";" as the column seperator
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")

# filters the rows to only include the two days
data <- filter(data, Date == "2/2/2007" | Date == "2/1/2007")

# Reformats the date
data$Date <- dmy(data$Date)

# Creates a new column that contains the date and time.
data$dateTime <- paste(data$Date, data$Time)

# Reformats the date and time and stores it in the Date column
data$Date <- strptime(data$dateTime, format("%Y-%m-%d %H:%M:%S"))

# Convert to a numeric value
data$Global_active_power <- as.numeric(data$Global_active_power)

# Draw the histogram
hist(data$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")
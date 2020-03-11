# Loads the setup file that will create the dataset and
source("dataSetup.R")

data <- dataSetup()

# Convert to a numeric value
data$Global_active_power <- as.numeric(data$Global_active_power)

# Draw the histogram
hist(data$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")
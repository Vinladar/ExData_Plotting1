# Loads the setup file that will create the dataset and
source("dataSetup.R")

data <- dataSetup()

plot(data$Date, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png")
dev.off()
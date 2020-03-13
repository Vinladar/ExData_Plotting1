# Loads the setup file that will create the dataset and
source("dataSetup.R")

data <- dataSetup()

plot2 <- function() {
	plot(data$Date, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
}

createPNG2 <- function() {
	plot2()
	dev.copy(png, file = "plot2.png")
	dev.off()
}
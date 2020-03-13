source("dataSetup.R")

data <- dataSetup()
plot3 <- function() {
	with(data, plot(Date, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l"))
	lines(data$Date, data$Sub_metering_2, type = "l", col = "red")
	lines(data$Date, data$Sub_metering_3, type = "l", col = "blue")
	legend(c("topright"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering3"), lty = 1, col = c("black", "red", "blue"))
}

createPNG3 <- function() {
	plot3()
	dev.copy(png, file = "plot3.png")
	dev.off()
}

source("dataSetup.R")
source("plot2.R")
source("plot3.R")

plot4 <- function() {
	par(mfrow = c(2, 2))
	plotTopLeft()
	plotTopRight()
	plotBottomLeft()
 	plotBottomRight()
}

plotTopLeft <- function() {
	plot2()
}

plotTopRight <- function() {
	with(data, plot(Date, Voltage, xlab = "datatime", ylab = "Voltage", type = "l"))
}

plotBottomLeft <- function() {
	plot3()
}

plotBottomRight <- function() {
	with(data, plot(Date, Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l"))
}

createPNG4 <- function() {
	plot4()
	dev.copy(png, file = "plot4.png")
	dev.off()
}
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
data$DateTime <- paste(data$Date, data$Time, sep = " ")
data$DateTime <- strptime(data$DateTime, format = "%d/%m/%Y %H:%M:%S")
data <- data[c(-1,-2)]
data1 <- subset(data, as.Date(data$DateTime)>="2007-02-01" & as.Date(data$DateTime) <= "2007-02-02")

data1$Global_active_power <- as.numeric(as.character(data1$Global_active_power))
data1$Global_reactive_power <- as.numeric(as.character(data1$Global_reactive_power))
data1$Sub_metering_1 <- as.numeric(as.character(data1$Sub_metering_1))
data1$Sub_metering_2 <- as.numeric(as.character(data1$Sub_metering_2))
data1$Voltage <- as.numeric(as.character(data1$Voltage))
Sys.setlocale("LC_TIME", "English")

png("plot4.png")
par(mfcol = c(2,2))

#plot1
with(data1, plot(DateTime, Global_active_power, type = "l", xlab="", ylab = "Global Active Power"))

#plot2
with(data1, plot(DateTime, Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering"))
lines(data1$DateTime, data1$Sub_metering_2, type = "l", col = "red")
lines(data1$DateTime, data1$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = names(data1)[5:7], col = c(1, 2, 4), lty = "solid", bty = "n")

#plot3
with(data1, plot(DateTime, Voltage, type = "l", xlab="datetime"))

#plot4
with(data1, plot(DateTime, Global_reactive_power, type = "l", xlab="datetime"))

dev.off()

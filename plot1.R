data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
data$DateTime <- paste(data$Date, data$Time, sep = " ")
data$DateTime <- strptime(data$DateTime, format = "%d/%m/%Y %H:%M:%S")
data <- data[c(-1,-2)]
data1 <- subset(data, as.Date(data$DateTime)>="2007-02-01" & as.Date(data$DateTime) <= "2007-02-02")

data1$Global_active_power <- as.numeric(as.character(data1$Global_active_power))
png("plot1.png")
hist(data1$Global_active_power, xlab = "Global Active Power(kilowatts)", main = "Global Active Power", col = "red")
dev.off()
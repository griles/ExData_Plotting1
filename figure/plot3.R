png("plot3.png")

epc <- subset(read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE), Date == '1/2/2007' | Date == '2/2/2007')
epc$Time  <- strptime(paste(epc$Date,epc$Time),format = "%d/%m/%Y %H:%M:%S", tz = "")
epc$Date <- as.Date(epc$Date,"%d/%m/%Y")


plot(epc$Time, epc$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab= "")
lines(epc$Time, epc$Sub_metering_2, col = "red")
lines(epc$Time, epc$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red", "blue"))

dev.off()
png("plot2.png")

epc <- subset(read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE), Date == '2/1/2007' | Date == '2/2/2007')
epc$Time  <- strptime(paste(epc$Date,epc$Time),format = "%d/%m/%Y %H:%M:%S", tz = "")
epc$Date <- as.Date(epc$Date,"%d/%m/%Y")


plot(epc$Time, epc$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

dev.off()
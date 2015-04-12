png("plot1.png")

epc <- subset(read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE), Date == '1/2/2007' | Date == '2/2/2007')
epc$Time  <- strptime(paste(epc$Date,epc$Time),format = "%d/%m/%Y %H:%M:%S", tz = "")
epc$Date <- as.Date(epc$Date,"%d/%m/%Y")


hist(epc$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()
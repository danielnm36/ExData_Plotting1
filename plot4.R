data <- read.table("C:/Users/daniel/Desktop/R course/household_power_consumption.txt", header = TRUE, sep = ";", dec = ".")
setdat <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
datetime <- strptime(paste(setdat$Date, setdat$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
toprint <- as.numeric(setdat$Global_active_power)
toprint2 <- as.numeric(subSetData$Global_reactive_power)
voltage <- as.numeric(subSetData$Voltage)
Metering1 <- as.numeric(setdat$Sub_metering_1)
Metering2 <- as.numeric(setdat$Sub_metering_2)
Metering3 <- as.numeric(setdat$Sub_metering_3)
dev.copy(png, file="plot4.png", height=480, width=480)
par(nfrow = c(2, 2))

plot(datetime, torpint, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")


plot(datetime, Metering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, Metering2, type="l", col="red")
lines(datetime, Metering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

plot(datetime, toprint2, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()
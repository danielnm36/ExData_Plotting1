data <- read.table("C:/Users/daniel/Desktop/R course/household_power_consumption.txt", header = TRUE, sep = ";", dec = ".")
setdat <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
datetime <- strptime(paste(setdat$Date, setdat$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
toprint <- as.numeric(setdat$Global_active_power)
png("plot.png2", width = 480, height = 480)
plot(datetime,toprint, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
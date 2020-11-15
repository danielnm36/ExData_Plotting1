data <- read.table("C:/Users/daniel/Desktop/R course/household_power_consumption.txt", header = TRUE, sep = ";", dec = ".")
setdat <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
toprint <- as.numeric(setdat$Global_active_power)
png("plot.png1", width = 480, height = 480)
hist(toprint, col = "red" , main = "Global Active Power", xlab = "Global Active Power (kilowatts)" )
dev.off()
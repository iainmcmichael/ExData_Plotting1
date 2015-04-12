#================================================================================
#Call common script to download and unpack the data
#This could be a method but the code is not generic enough to bother
#================================================================================
#source("1 - LoadData.R")

#================================================================================
#Draw the Histogram Chart
#================================================================================
png(filename="plot4.png", width=480, height=480)

par(mfrow=c(2,2))

#Top left
plot(data$FullDate, data$Global_active_power, pch=0, cex=0, xlab=NA, 
     ylab = "Global Active Power")
lines(data$FullDate,data$Global_active_power, type="l")

#Top right
plot(data$FullDate, data$Voltage, pch=0, cex=0, xlab="datetime", 
     ylab = "Voltage")
lines(data$FullDate,data$Voltage, type="l")

#Bottom Left
plot(data$FullDate, data$Sub_metering_1, pch=0, cex=0, xlab=NA, 
     ylab = "Energy sub metering")
lines(data$FullDate,data$Sub_metering_1, type="l", col="black")
lines(data$FullDate,data$Sub_metering_2, type="l", col="red")
lines(data$FullDate,data$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3" ), 
       col=c("black","red","blue"), lty=1, bty="n")

#Bottom Right
plot(data$FullDate, data$Global_reactive_power, pch=0, cex=0, xlab="datetime", 
     ylab = "Global_reactive_power")
lines(data$FullDate,data$Global_reactive_power, type="l", col="black")

dev.off()
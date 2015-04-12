#================================================================================
#Call common script to download and unpack the data
#This could be a method but the code is not generic enough to bother
#================================================================================
source("1 - LoadData.R")

#================================================================================
#Draw the Histogram Chart
#================================================================================
png(filename="plot3.png", width=480, height=480)
plot(data$FullDate, data$Sub_metering_1, pch=0, cex=0, xlab=NA, 
     ylab = "Energy sub metering")
lines(data$FullDate,data$Sub_metering_1, type="l", col="black")
lines(data$FullDate,data$Sub_metering_2, type="l", col="red")
lines(data$FullDate,data$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3" ), 
       col=c("black","red","blue"), lty=1)
dev.off()
#================================================================================
#Call common script to download and unpack the data
#This could be a method but the code is not generic enough to bother
#================================================================================
source("1 - LoadData.R")

#================================================================================
#Draw the Histogram Chart
#================================================================================
png(filename="plot2.png", width=480, height=480)
par(mfrow=c(1,1))
plot(data$FullDate, data$Global_active_power, pch=0, cex=0, xlab=NA, 
     ylab = "Global Active Power (kilowatts)")
lines(data$FullDate,data$Global_active_power, type="l")
dev.off()
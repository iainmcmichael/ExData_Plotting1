#================================================================================
#Call common script to download and unpack the data
#This could be a method but the code is not generic enough to bother
#================================================================================
source("1 - LoadData.R")

#================================================================================
#Draw the Histogram Chart
#================================================================================
png(filename="plot1.png", width=480, height=480)
hist(as.numeric(data$Global_active_power), col="red", breaks=20, xlab=NA, main=NA)
title("Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
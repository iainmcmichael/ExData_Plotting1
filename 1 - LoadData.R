#================================================================================
#Downlaod, unzip the file and remove the zip to save space in the directory
#================================================================================
library(dplyr)
URL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(URL,"temp", "curl")
unzip("temp", overwrite=TRUE)
unlink("temp")

#================================================================================
#Load the data and subset for the two days of data we are exploring
#n.b.  This may need changed on some computers if there is nt enough RAM
#================================================================================
col <- c("character", "character", rep("numeric",7))
rawData <- read.table("household_power_consumption.txt", sep=";", header=TRUE, 
                      colClasses=col, na.strings="?")
rawData = mutate(rawData, Date = as.Date(Date, format="%d/%m/%Y"))
rawData = mutate(rawData, Time = strptime(Time,"%H:%M:%S"))
data <- filter(rawData, Date >= as.Date("2007-02-01")
               & Date <= as.Date("2007-02-02"))

#================================================================================
#Remove the file to save disk space and avoid going up to git
#n.b.  This file has also been added to .gitignore to avoid it ever being transferred
#================================================================================
unlink("household_power_consumption.txt")
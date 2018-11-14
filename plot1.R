#install.packages("data.table")
#install.packages("lubridate")

library(data.table)
library(lubridate)

#download the data to the working directory and read the txt file in a data table using fread command   
hpc<-fread("household_power_consumption.txt", sep=";", header=TRUE)

#tyding up the data  
hpc[hpc == "?"] <- NA
hpc[, Global_active_power:= as.numeric(Global_active_power)]
hpc[, Global_reactive_power:= as.numeric(Global_reactive_power)]
hpc[, Voltage:= as.numeric(Voltage)]
hpc[, Sub_metering_1:= as.numeric(Sub_metering_1)]
hpc[, Sub_metering_2:= as.numeric(Sub_metering_2)]
hpc[, Sub_metering_3:= as.numeric(Sub_metering_3)]
hpc[, DateTime:= strptime(paste(Date, Time, sep=" "), "%d/%m/%Y %H:%M:%S")]
hpc[, Date:= NULL]
hpc[, Time:= NULL]

#filtering the data that's required  
hpc<- hpc[date(hpc$DateTime) %in% c(ymd("2007-02-01"), ymd("2007-02-02"))]

#now create the plot  
png(filename="plot1.png", width=480, height=480)
hist(hpc$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
#Considering plot1.R was already run, the hpc dataset would have already been created and updated
#so we will use the hpc dataset already created
  
#create the plot
png(filename="plot4.png", width=480, height=480)
par(mfrow = c(2,2))
  
with(hpc, plot(DateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
  
with(hpc, plot(DateTime, Voltage, type="l", xlab="datetime", ylab="Voltage"))
  
with(hpc, plot(DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))
with(hpc, lines(DateTime, Sub_metering_2, type="l", col="red"))
with(hpc, lines(DateTime, Sub_metering_3, type="l", col="blue"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1,lwd=2.5)
  
with(hpc, plot(DateTime, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power"))
  
dev.off()
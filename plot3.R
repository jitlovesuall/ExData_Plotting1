#Considering plot1.R was already run, the hpc dataset would have already been created and updated
#so we will use the hpc dataset already created
  
#create the plot
png(filename="plot3.png", width=480, height=480)
with(hpc, plot(DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))
with(hpc, lines(DateTime, Sub_metering_2, type="l", col="red"))
with(hpc, lines(DateTime, Sub_metering_3, type="l", col="blue"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1,lwd=2.5)
dev.off()

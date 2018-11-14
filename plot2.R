#Considering plot1.R was already run, the hpc dataset would have already been created and updated
#so we will use the hpc dataset already created

#create the plot
png(filename="plot2.png", width=480, height=480)
with(hpc, plot(DateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()

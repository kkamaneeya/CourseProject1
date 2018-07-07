png("plot4.png", width = 480, height = 480)

par(mfrow=c(2,2))

with(data2,plot(DateTime,Global_active_power,type="l",ylab = "Global Active Power",xlab = ""))

with(data2,plot(DateTime,Voltage,type="l",xlab = "datetime"))

with(data2,plot(DateTime,Sub_metering_1,type="l",ylab = "Energy sub metering",xlab = ""))
with(data2,lines(DateTime,Sub_metering_2,col = "red"))
with(data2,lines(DateTime,Sub_metering_3,col = "blue"))
legend("topright",lwd=1,col = c("black","red","blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty = "n")

with(data2,plot(DateTime,Global_reactive_power,type="l",xlab = "datetime"))

dev.off()
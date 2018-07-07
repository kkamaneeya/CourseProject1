png("plot3.png", width = 480, height = 480)

with(data2,plot(DateTime,Sub_metering_1,type="l",ylab = "Energy sub metering",xlab = ""))
with(data2,lines(DateTime,Sub_metering_2,col = "red"))
with(data2,lines(DateTime,Sub_metering_3,col = "blue"))
legend("topright",lwd=1,col = c("black","red","blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()
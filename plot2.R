##making a copy of data and then creating a DateTime column
data2 <- data
data2$DateTime <- strptime(paste(data2$Date, data$Time), format="%Y-%m-%d %H:%M:%S")

png("plot2.png", width = 480, height = 480)
with(data2,plot(DateTime,Global_active_power,type="l",ylab = "Global Active Power (kilowatts)",xlab = ""))
dev.off()
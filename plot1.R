##getting the variables names
cname <- names(read.csv2("household_power_consumption.txt",nrows = 1))

##Using trial and error, I hvae found the approximate no. of rows to skip to get the required data
data <- read.csv2("household_power_consumption.txt",colClasses=c(rep("character",2),rep("numeric",7)),
                  col.names = cname,skip=66000,nrows = 5000,header = FALSE,stringsAsFactors = FALSE,dec = ".")

##converting to date and time formats
data$Date <- as.Date(data$Date,"%d/%m/%Y")
data$Time <- format(strptime(data$Time,"%H:%M:%S"),"%H:%M:%S")

data <- subset(data, Date == "2007-02-01"|Date == "2007-02-02")

png("plot1.png", width = 480, height = 480)
hist(data$Global_active_power,col = "red",xlab = "Global Active Power (kilowatts)",main = "Global Active Power")
dev.off()
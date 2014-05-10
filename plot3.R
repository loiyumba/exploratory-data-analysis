#To read Data for dates 2007-02-01 and 2007-02-02 
hpc <- read.table("D:\\Data Science\\MOOC\\4th Coursera - Exploratory Data Analysis\\Datasets\\Week 1\\household_power_consumption.txt",
                  skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table("D:\\Data Science\\MOOC\\4th Coursera - Exploratory Data Analysis\\Datasets\\Week 1\\household_power_consumption.txt",
                                                  nrow = 1, header = TRUE, sep=";")))


head(hpc)
tail(hpc)

#To label x-axis as days
hpc1 <- strptime(paste(hpc$Date, hpc$Time), format='%d/%m/%Y %H:%M:%S')
hpc2 <- as.POSIXct(hpc1)

#To create PNG file
png(filename = "plot3.png", width = 480, height = 480)

plot(hpc2, hpc$Sub_metering_1, 
     typ = "l",
     ylab = "Energy sub metering",
     xlab = "")
lines(hpc2, hpc$Sub_metering_2, col = "red")
lines(hpc2, hpc$Sub_metering_3, col = "blue")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1, lwd = 1, col = c("black", "red", "blue"), 
       cex = 0.6)

#To turn off the PNG device
dev.off()

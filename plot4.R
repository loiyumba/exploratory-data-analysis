hpc <- read.table("D:\\Data Science\\MOOC\\4th Coursera - Exploratory Data Analysis\\Datasets\\Week 1\\household_power_consumption.txt",
                  skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table("D:\\Data Science\\MOOC\\4th Coursera - Exploratory Data Analysis\\Datasets\\Week 1\\household_power_consumption.txt",
                                                  nrow = 1, header = TRUE, sep=";"))) 

head(hpc)

#To create PNG file
png(filename = "plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))
par("mfrow")
par("mar")

par(mar = c(4,4,2,2))

#To label x-axis as days
hpc1 <- strptime(paste(hpc$Date, hpc$Time), format='%d/%m/%Y %H:%M:%S')
hpc2 <- as.POSIXct(hpc1)

#1st sub-plot
plot(hpc2, hpc$Global_active_power, type="l", xlab="", ylab="Global Active Power")

#2nd sub-plot
plot(hpc2, hpc$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")


#3rd sub-plot
plot(hpc2, hpc$Sub_metering_1, 
     typ = "l",
     ylab = "Energy sub metering",
     xlab = "")
lines(hpc2, hpc$Sub_metering_2, col = "red")
lines(hpc2, hpc$Sub_metering_3, col = "blue")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1, lwd = 1, col = c("black", "red", "blue"), 
       cex = 0.6, bty = "n")

#4th sub-plot
plot(hpc2, hpc$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

#To turn off the PNG device
dev.off()
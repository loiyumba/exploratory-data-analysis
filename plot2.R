#To read Data for dates 2007-02-01 and 2007-02-02 
hpc <- read.table("D:\\Data Science\\MOOC\\4th Coursera - Exploratory Data Analysis\\Datasets\\Week 1\\household_power_consumption.txt",
                  skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table("D:\\Data Science\\MOOC\\4th Coursera - Exploratory Data Analysis\\Datasets\\Week 1\\household_power_consumption.txt",
                                                  nrow = 1, header = TRUE, sep=";")))
str(hpc)

#To label x-axis as days
hpc1 <- strptime(paste(hpc$Date, hpc$Time), format='%d/%m/%Y %H:%M:%S')
hpc2 <- as.POSIXct(hpc1)

str(hpc1)

#To create PNG file
png(filename = "plot2.png", width = 480, height = 480)

#To create line graph
plot(hpc2, hpc$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

#To turn off the PNG device
dev.off()

 
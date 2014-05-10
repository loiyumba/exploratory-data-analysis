#To read Data for dates 2007-02-01 and 2007-02-02 
hpc <- read.table("D:\\Data Science\\MOOC\\4th Coursera - Exploratory Data Analysis\\Datasets\\Week 1\\household_power_consumption.txt",
                  skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table("D:\\Data Science\\MOOC\\4th Coursera - Exploratory Data Analysis\\Datasets\\Week 1\\household_power_consumption.txt",
                                                  nrow = 1, header = TRUE, sep=";"))) 
head(hpc)

#To create a PNG file
png(filename = "plot1.png", width = 480, height = 480)

#To create histogram
hist(hpc$Global_active_power, 
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylim = c(0, 1200))

#To turn off PNG device
dev.off()

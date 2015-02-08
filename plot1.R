##plot1.R
Dat<-read.csv("exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";")
DAT<- subset(Dat, subset = Dat$Date == "1/2/2007" | Dat$Date == "2/2/2007")
DAT$Global_active_power <- as.numeric(as.character(DAT$Global_active_power))

png("plot1.png", width = 480, height = 480, units="px", bg = "transparent")
hist(DAT$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col="red")
dev.off()


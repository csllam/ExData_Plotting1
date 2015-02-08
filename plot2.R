##plot2.R
Dat<-read.csv("exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";")
DAT<- subset(Dat, subset = Dat$Date == "1/2/2007" | Dat$Date == "2/2/2007")
DAT$Global_active_power <- as.numeric(as.character(DAT$Global_active_power))
DAT$Date<- as.character(DAT$Date)
DAT$Time<- as.character(DAT$Time)
DAT$datetime = as.POSIXct(paste(DAT$Date, DAT$Time), format="%d/%m/%Y %H:%M:%S")

png("plot2.png", width = 480, height = 480, units="px")
plot(x = DAT$datetime, y= DAT$Global_active_power, type="l", xlab = "", ylab="Global Active Power (kilowatts)")
dev.off()


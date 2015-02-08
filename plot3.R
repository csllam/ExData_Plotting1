##plot3.R
Dat<-read.csv("exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";")
DAT<- subset(Dat, subset = Dat$Date == "1/2/2007" | Dat$Date == "2/2/2007")
DAT$Global_active_power <- as.numeric(as.character(DAT$Global_active_power))
DAT$Sub_metering_1 <- as.numeric(as.character(DAT$Sub_metering_1))
DAT$Sub_metering_2 <- as.numeric(as.character(DAT$Sub_metering_2))
DAT$Sub_metering_3 <- as.numeric(as.character(DAT$Sub_metering_3))


png("plot3.png", width = 480, height = 480, units="px")
plot(x=DAT$datetime, y=DAT$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(x = DAT$datetime, y=DAT$Sub_metering_2, col="red")
lines(x = DAT$datetime, y=DAT$Sub_metering_3, col="blue")
legend("topright", lty=c(1,1,1), col=c("black", "blue", "red"), legend=c("sub_metering_1", "sub_metering_2", "sub_metering_3"))
dev.off()


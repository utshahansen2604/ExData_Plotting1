setwd("C:/Users/my/Documents/R/Exploratory Data Analysis")
data<-read.delim("Power.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

head(data)
dim(data)
attach(data)

data2<-data[which(Date %in% c("1/2/2007","2/2/2007")),]
attach(data2)

png("plot4.png", width=480, height=480)

date_time <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


gap <- as.numeric(Global_active_power)
grp <- as.numeric(Global_reactive_power)
volt<- as.numeric(Voltage)
sub1 <- as.numeric(Sub_metering_1)
sub2 <- as.numeric(Sub_metering_2)
sub3 <- as.numeric(Sub_metering_3)



png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(date_time, gap, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(date_time, volt, type="l", xlab="datetime", ylab="Voltage")

plot(date_time, sub1, type="l", ylab="Energy Submetering", xlab="")
lines(date_time, sub2, type="l", col="red")
lines(date_time, sub3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(date_time, grp, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()

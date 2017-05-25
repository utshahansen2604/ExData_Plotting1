setwd("C:/Users/my/Documents/R/Exploratory Data Analysis")
data<-read.table("Power.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

head(data)
dim(data)
attach(data)

data2<-data[which(Date %in% c("1/2/2007","2/2/2007")),]
attach(data2)

png("plot3.png", width=480, height=480)

date_time <- strptime(paste(Date, Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


gap <- as.numeric(Global_active_power)
sub1 <- as.numeric(Sub_metering_1)
sub2 <- as.numeric(Sub_metering_2)
sub3 <- as.numeric(Sub_metering_3)

png("plot3.png", width=480, height=480)

plot(date_time, sub1, type="l", ylab="Energy Submetering", xlab="")
lines(date_time, sub2, type="l", col="red")
lines(date_time, sub3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2, col=c("black", "red", "blue"))
dev.off()
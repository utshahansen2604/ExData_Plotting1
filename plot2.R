setwd("C:/Users/my/Documents/R/Exploratory Data Analysis")
data<-read.delim("Power.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

head(data)
dim(data)
attach(data)

data2<-data[which(Date %in% c("1/2/2007","2/2/2007")),]
attach(data2)

png("plot2.png", width=480, height=480)


date_time <- strptime(paste(Date, Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

plot(date_time, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off() 
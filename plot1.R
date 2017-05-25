setwd("C:/Users/my/Documents/R/Exploratory Data Analysis")
data<-read.delim("Power.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

head(data)
dim(data)
attach(data)

data2<-data[which(Date %in% c("1/2/2007","2/2/2007")),]
attach(data2)
      
png("plot1.png", width=480, height=480)

hist(as.numeric(Global_active_power)/500,
     col = "red", main= "Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
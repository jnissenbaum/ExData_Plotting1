classlist<-c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
fname<-"household_power_consumption.txt"
mydata<-read.table(file=fname,sep=";",header=TRUE, colClasses=classlist, na.strings="?")

mydata2<-subset(mydata,(Date=="1/2/2007")|(Date=="2/2/2007"))

png(filename="plot1.png")
hist(mydata3$Global_active_power,xlab="Global Active Power",  
     main="Global Active Power (kilowatts)", col="red")

dev.off()
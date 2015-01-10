classlist<-c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
fname<-"household_power_consumption.txt"
mydata<-read.table(file=fname,sep=";",header=TRUE, colClasses=classlist, na.strings="?")

mydata2<-subset(mydata,(Date=="1/2/2007")|(Date=="2/2/2007"))

png(filename="plot2.png")

timedate=paste(mydata3$Date,mydata3$Time,sep=" ")
timedate2<-strptime(timedate,"%d/%m/%Y  %H:%M:%S")
with(mydata3,plot(timedate2,Global_active_power,type="l",
   ylab="Global Active Power (kilowatts)",xlab=""))


dev.off()
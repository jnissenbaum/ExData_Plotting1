classlist<-c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
fname<-"household_power_consumption.txt"
mydata<-read.table(file=fname,sep=";",header=TRUE, colClasses=classlist, na.strings="?")

mydata2<-subset(mydata,(Date=="1/2/2007")|(Date=="2/2/2007"))



timedate=paste(mydata3$Date,mydata3$Time,sep=" ")
timedate2<-strptime(timedate,"%d/%m/%Y  %H:%M:%S")

png(filename="plot3.png")
with(mydata3,plot(timedate2,Sub_metering_1 ,type="l",col="black",
                  ylab="Energy Sub-Metering",xlab=""))
with(mydata3,points(timedate2,Sub_metering_2,col="blue",type="l"))
with(mydata3,points(timedate2,Sub_metering_3,col="red",type="l"))

legend("topright", pch=1, col = c("black","blue", "red"),
   legend = c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"))
dev.off()
classlist<-c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
fname<-"household_power_consumption.txt"
mydata<-read.table(file=fname,sep=";",header=TRUE, colClasses=classlist, na.strings="?")

mydata2<-subset(mydata,(Date=="1/2/2007")|(Date=="2/2/2007"))



timedate=paste(mydata3$Date,mydata3$Time,sep=" ")
timedate2<-strptime(timedate,"%d/%m/%Y  %H:%M:%S")

png(filename="plot4.png")
par(mfrow=c(2, 2))

with(mydata3,plot(timedate2,Global_active_power,type="l",
                  ylab="Global Active Power (kilowatts)",xlab=""))
with(mydata3,plot(timedate2,Voltage,type="l",
                  ylab="Voltage",xlab="datetime"))

with(mydata3,plot(timedate2,Sub_metering_1 ,type="l",col="black",
                  ylab="Energy Sub-Metering",xlab=""))
with(mydata3,points(timedate2,Sub_metering_2,col="blue",type="l"))
with(mydata3,points(timedate2,Sub_metering_3,col="red",type="l"))

legend("topright", pch=1, col = c("black","blue", "red"),
   legend = c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"))

with(mydata3,plot(timedate2,Global_reactive_power,type="l",
                  ylab="Global Reactive Power",xlab="datetime"))


dev.off()
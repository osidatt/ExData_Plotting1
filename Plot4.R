## Plot png 4, four plots on the same graph

png("plot4.png", height=480,width=480)
par(mfrow=c(2,2))
plot(tt3,tt1$Global_active_power/1000,pch=10,type="l",ylab="Global Active Power")
plot(tt3,tt1$Voltage,type="l",col='green',ylab="Voltage")

plot(tt3,tt1$Sub_metering_1,type="l",col='black',ylab="Energy Sub metering")
par(new="T")
plot(tt3,tt1$Sub_metering_2,type="l",col='red',ylab="",axes=F)
par(new="T")
plot(tt3,tt1$Sub_metering_3,type="l",col='blue',ylab="",axes=F)

plot(tt3,tt1$Global_reactive_power/1000,pch=10,type="l")

dev.off()
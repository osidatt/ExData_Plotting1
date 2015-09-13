## Plot png3

png("plot3.png", height=480,width=480)

plot(tt3,tt1$Sub_metering_1,type="l",col='black',ylab="Energy Sub metering")
par(new=T)

plot(tt3,tt1$Sub_metering_2,type="l",col='red',ylab="",axes=F)
par(new=T)

plot(tt3,tt1$Sub_metering_3,type="l",col='blue',ylab="",axes=F)

legend("Topright")
dev.off()
## Plot png2
png("plot2.png",height=480,width=480)
plot(tt3,tt1$Global_active_power/1000,pch=10,type="l",ylab="Global Active Power (killowatts)")
dev.off()

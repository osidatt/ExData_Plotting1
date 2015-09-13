

##### READ the DATA################################
filename="household_power_consumption-3.txt"
tt<-read.csv(filename,header=TRUE,sep=";")
summary(tt)
tt1=tt[complete.cases(tt),]

######CONVERT The DATA, specially the dates which were stored as characters########
tt1$Date<-as.Date(tt1$Date,"%d/%m/%Y")
tt1$Time<-strptime(tt1$Time, format="%T",tz="")
tt1$Global_active_power<-as.numeric(tt1$Global_active_power)

######## Subset the dates to two days#########
tt1<-subset(tt1,Date>="2007-02-01")
tt1<-subset(tt1,Date<="2007-02-02")
tt1$Global_active_power<-as.numeric(tt1$Global_active_power
                                   
tt3<-strptime(paste(tt1$Date,tt1$Time),format="%Y-%m-%d %H:%M:%S")

## Plot png1

png("plot1.png",height=480,width=480)
hist(tt1$Global_active_power,col="red",main="Global Active Power")

dev.off()


#


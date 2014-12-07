

#load data
consumo_elec<-read.table('source data/consumo_elec.txt',header=TRUE,sep='|')

#creat image

png(filename='plots/plot4.png',width=480,height=480,units='px')

# make 4 plots
par(mfrow=c(2,2))

# plot data on top left (1,1)
plot(consumo_elec$DateTime,consumo_elec$GlobalActPower,ylab='Global Active Power',xlab='',type='l')

# plot data on top right (1,2)
plot(consumo_elec$DateTime,consumo_elec$Voltage,xlab='datetime',ylab='Voltage',type='l')

# plot data on bottom left (2,1)
lncol<-c('black','red','blue')
lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(consumo_elec$DateTime,consumo_elec$SubMetering1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(consumo_elec$DateTime,consumo_elec$SubMetering2,col=lncol[2])
lines(consumo_elec$DateTime,consumo_elec$SubMetering3,col=lncol[3])

# plot data on bottom right (2,2)
plot(power.consumption$DateTime,power.consumption$GlobalReactivePower,xlab='datetime',ylab='Global_reactive_power',type='l')

# close device
x<-dev.off()
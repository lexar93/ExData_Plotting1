consumo_elec<-read.table('source data/consumo_elec.txt',header=TRUE,sep='|')

# open device
png(filename='plots/plot2.png',width=480,height=480,units='px')

# plot data
plot(consumo_elec$DateTime,consumo_elec$GlobalActPower,ylab='Global Active Power (kilowatts)', xlab='', type='l')

# close device
x<-dev.off()



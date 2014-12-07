
#load data
consumo_elec<-read.table('source data/consumo_elec.txt',header=TRUE,sep='|')

#create image
png(filename='plots/plot1.png',width=420,height=420,units='px')
#create histogram
hist(consumo_elec$GlobalActPower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')
#turn off device
x<-dev.off()



# load data
consumo_elec<-read.table('source data/consumo_elec.txt',header=TRUE,sep='|')

# open device
png(filename='plots/plot3.png',width=480,height=480,units='px')

# plot data
lncol<-c('black','red','blue')
lbls<-c('Submetering1','Submetering2','Submetering3')
plot(consumo_elec$DateTime,consumo_elec$SubMetering1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(consumo_elec$DateTime,consumo_elec$SubMetering2,col=lncol[2])
lines(consumo_elec$DateTime,consumo_elec$SubMetering3,col=lncol[3])

# add legend
legend('topright',legend=lbls,col=lncol,lty='solid')

# close device
x<-dev.off()
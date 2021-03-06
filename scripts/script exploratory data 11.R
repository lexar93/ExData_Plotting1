
#working directory
setwd ("C:/r/exploratory data")
#load libraries
library(data.table)
library(lubridate)

#insert variables
variable.class<-c(rep('character',2),rep('numeric',7))
# read table
consumo_elec<-read.table('household_power_consumption.txt',header=TRUE,sep=';',na.strings='?',colClasses=variable.class)
# select dates
consumo_elec<-consumo_elec[consumo_elec$Date=='1/2/2007' | consumo_elec$Date=='2/2/2007',]


#name columns
colnames(consumo_elec)
cols<-c('Date','Time','GlobalActPower','GlobalReaPower','Voltage','GlobalIntensity',
        'SubMetering1','SubMetering2','SubMetering3')
colnames(consumo_elec)<-cols
#tidy data and time
consumo_elec$DateTime<-dmy(consumo_elec$Date)+hms(consumo_elec$Time)
consumo_elec<-consumo_elec[,c(10,3:9)]

#write table

write.table(consumo_elec,file='source data/consumo_elec.txt',sep='|',row.names=FALSE)
 else {
  
  consumo_elec<-read.table('source data/consumo_elec.txt',header=TRUE,sep='|')
  consumo_elec$DateTime<-as.POSIXlt(consumo_elec$DateTime)
  
}


# remove the large raw data set VERY IMPORTANT
if (file.exists('source data/consumo_elec.txt')) {
  x<-file.remove('source data/consumo_elec.txt')
}
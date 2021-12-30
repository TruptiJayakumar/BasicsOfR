installed.packages()
install.packages("nycflights13")
library(nycflights13)
nycflights13::flights
attach(nycflights13::flights)
plot(arr_delay,dep_delay) # plotting arrival vs departure delay
plot(arr_delay,dep_delay, main= 'Arrival V/s Depature Delay') # Adding Title
plot(arr_delay,dep_delay, main= 'Arrival V/s Depature Delay'
     , xlab ='Arrival Delay',ylab='Departure Delay')# Adding x and y labels

abline(0,1)# Straight line with y intercept 0 and slope 1
plot(arr_delay,dep_delay, main= 'Arrival V/s Depature Delay'
     , xlab ='Arrival Delay',ylab='Departure Delay', pch =3)# Adding character points as +


#Plotting a combined graph for 2 carriers for comparison
par(mfrow =c(1,2))
plot(arr_delay[carrier =='UA'],dep_delay[carrier =='UA'], main= 'UA'
     ,xlim =c(0,1000), ylim =c(0,1000))
plot(arr_delay[carrier =='AA'],dep_delay[carrier =='AA'], main= 'AA'
     ,xlim =c(0,1000), ylim =c(0,1000))


#Plotting graphs side by side with scaled axis

par(mfrow =c(1,2))
plot(arr_delay[carrier =='UA'],dep_delay[carrier =='UA'], main= 'Arrival V/s Depature Delay'
     , xlab ='Arrival Delay',ylab='Departure Delay',col ='red')

#Creating one plot and adding various texts
par(mfrow =c(1,1))
plot(arr_delay[carrier =='UA'],dep_delay[carrier =='UA'], main= 'Arrival V/s Departure Delay')
text(x=100,y=400, adj=0,'United Airways')
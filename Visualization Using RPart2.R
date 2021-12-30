library(nycflights13)
nycflights13::flights
attach(nycflights13::flights)
# checking correlation
pairs(~arr_delay+dep_delay)
pairs(~arr_delay+dep_delay+distance+arr_time)

#histogram plot
hist(distance[carrier=='UA'], breaks=10)


#boxplot and histograms


par(mfrow=c(2,2))
boxplot(distance[carrier == "UA"], main="UA", ylim = c(0,5000))
boxplot(distance[carrier == "AA"], main="AA", ylim = c(0,5000))
hist(distance[carrier == "UA"], main="UA", 
     breaks = c(0, 1000, 2000, 3000, 4000, 5000),
     xlim = c(0,5000), ylim = c(0,30000))
hist(distance[carrier == "AA"], main="AA", 
     breaks = c(0, 1000, 2000, 3000, 4000, 5000),     
     xlim = c(0,5000), ylim = c(0,30000))

#multiple boxplots on the same graph per one categorical data
 par(mfrow =c(1,1))
 boxplot(distance ~ carrier)
# Plotting t distribution for various degrees of freedom

q <- seq(-4,4, by=0.1)

plot(q, dt(q,19), type ='l', lty='solid', xlab ='t', ylab ='dt')
lines(q, dt(q,9), type ='l', lty='dotted')
lines(q, dt(q,4), type ='l', lty='dashed')

# Mean of population is 150cc
# Four samples drawn , means are - 151,153,152,152)
# H0 =150cc, HA not equal to 150cc at 95% confidence

#t test since there us no sd of population

library(BDSA)
library(visualize)
vol <-c(151,153,152,152)
t.test(x =vol,mu =150)
# P value is extremely low so you fail to accept H0

#Visualizing the same
visualize.t(stat =c(-4.899,4.899), df=3, section ='tails')



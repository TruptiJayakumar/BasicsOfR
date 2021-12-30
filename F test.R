# F test
#We took 8 samples for machine A and 5 for machine B. Check if there is a
#significant difference between the two at 90% confidence

mca <- c(150,150,151,149,151,151,148,151)
mcb <- c(152,146,152,150,155)

sd(mca)
sd(mcb)


# Performing F test

var.test(x=mcb, y=mca, ratio = 1, conf.level = 0.90)
# P low means we reject H0. There is a significant difference

# Trying it the manual way

fcal = sd(mcb)/sd(mca)
fcal


fcritical <- qf(p =0.05, df1=4, df2 = 7, lower.tail = F)
fcritical


# Since fcritical is much greater we reject H0


#Plotting an F distribution

x<- seq(0,10)
plot(df(x, df1=4, df2 =7), type ='l')


#Visualize the plots for the question

boxplot(mcb, mca)

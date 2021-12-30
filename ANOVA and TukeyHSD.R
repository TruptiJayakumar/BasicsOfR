#ANOVA
 

#Preparing the data in a dataframe
mc1 <- c(150,151,152,152,151,150)
mc2 <- c(153,152,148,151,149,152)
mc3 <- c(156,154,155,156,157,155)

volume <- c(mc1,mc2,mc3)
machine <- rep(c('machine1','machine2', 'machine3'), times =c(length(mc1),length(mc2), length(mc3)))

vol.final <- data.frame(volume,machine)

vol.final


#Perform ANOVA

data_aov <-  aov(data= vol.final, formula = volume~machine)
summary(data_aov)


# P value is very low and hence we reject H0. Hence a significant difference in one of these machines

#visualize

boxplot(mc1, mc2, mc3)


#TukeyHSD to determine which of the machines is different!

TukeyHSD(x= data_aov)
# we see with the p value that machine 3 is significantly different from the other 2.


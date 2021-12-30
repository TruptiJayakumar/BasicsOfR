# Contigency testing to check if there is any relationship between the operator and the shift
#in which they work in

Op1 <- c(22,28,72)
Op2 <- c(26,62,22)
Op3 <- c(23,26,66)

data <- data.frame(Op1,Op2,Op3)
data
rownames(data)<- c('Shift1','Shift2','Shift3')
data

#Performing Contigency testing
chisq.test(data)
#P vaue very low, reject H0. Hence there is a relationship between the two variables


#In case of large datasets we need to use gmodels to perform contigency testing

install.packages('gmodels')
library(gmodels)

library(nycflights13)
f1 <- nycflights13::flights
head(f1)

CrossTable(x=flights$carrier, y=flights$month, prop.r = F, prop.c = F, prop.t = F, chisq =T)

#P value very small hence we reject H0. 
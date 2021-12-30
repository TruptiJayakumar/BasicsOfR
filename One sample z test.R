Perfume_Volumes$`Machine 1`
# mean is 150 and standard deviation is 2cc. With a sample of 100 bottles mean is 152. Has the mean
#increased at 95% confidence level

# therefore, H0 <= 150cc, HA > 150cc

zvalue<-(153-150)/(2/sqrt(100))
zvalue # this is the test statistic

qnorm(0.050) # test critical value. Since zvalue is much greater than this, we fail to reject H0.

 #Trying the same thing using BSDA

install.packages('BSDA')
library(BSDA)

z.test(x=Perfume_Volumes$'Machine 1', alternative ='greater', mu =150, sigma.x=2 )
#Since p is very low, null must go and we fail to accept H0.
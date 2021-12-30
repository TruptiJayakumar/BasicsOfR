install.packages("EnvStats")
library(EnvStats)
data <- VolumeVar$Volumes
 # 25 samples are picked with variance as 5 cc. has it increased from a historical value of 4? at 95% confidence
# H0 is 4 , HA> 4

varTest(x =VolumeVar$Volumes, alternative = 'greater', sigma.squared = 4)
#since p is high, we fail to reject H0


#Try doing the same without envstats

teststat <-((25-1)*var(VolumeVar$Volumes))/4
teststat

#since we know 95 percent confidence, we can calculate the critical value

critical<- qchisq(p =0.05, df =24, lower.tail = F)
critical

#We notice that test is within the critical limits and hence we fail to reject H0


#Lets visualize!

x<- seq(1,50, by=1)
y <- dchisq(x,24)

plot(y , type ='l',xlab ='chi sq', ylab ='f(chi sq)')
abline(v=30)
text(30,0.05,'Calculated')
abline(v =critical)
text(45,0.05,'Critical')


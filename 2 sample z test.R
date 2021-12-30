#Performing 2 sample z test. One machine has mean 151.2 and other has 151.9 from 100 samples
#Find out if they have different means

#H0 --> mean1 =mean2
#HA --> mean1 not equal to mean 2

#Do it using BDSA
library(BDSA)
z.test(x= Perfume_Volumes_2_Sample$`Machine 1`,
       y= Perfume_Volumes_2_Sample$`Machine 2`,
       sigma.x =sd(Perfume_Volumes_2_Sample$'Machine 1'),
       sigma.y = sd(Perfume_Volumes_2_Sample$'Machine 2'))

#P value is low, hence reject h0
#Visualizing the same

boxplot(Perfume_Volumes_2_Sample)


hist(x =Perfume_Volumes_2_Sample$'Machine 1', col =rgb(1,0,0,0.5))
hist(x= Perfume_Volumes_2_Sample$'Machine 2', add =T,col= rgb(0,0,1,0.5))
box()

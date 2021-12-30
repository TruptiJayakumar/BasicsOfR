##Demonstration of Central Limit Theorem##

r<-runif(1000)
hist(r)
meanr <- mean(r)
sdr<- sd(r)


#Taking 100 samples and plotting
cl100 <- mean(sample(r,100))

for( i in 1:100) {
  cl100<- c(cl100, mean(sample(r,100)))
}

hist(cl100)
mean(cl100)
sd(cl100)



## Plotting Normal Distribution ##

zvalue <- seq(-4.0,4.0,by=0.1)
dnorm(zvalue)
plot(zvalue,dnorm(zvalue), type ='l')



#Installing a package for better visualization!

install.packages('visualize')
library('visualize')

visualize.norm(stat = c(73,75), mu =75, sd =1, section ='bounded')

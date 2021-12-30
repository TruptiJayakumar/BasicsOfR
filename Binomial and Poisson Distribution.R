##BINOMIAL DISTRIBUTION ##

library('visualize')
visualize.binom(5,10,0.5)
#flipping a coin 10 times to get 5 heads

rbinom(10,10,0.5) # flipping 10 coins 10 times


pbinom(5,10,0.5,lower.tail =TRUE) #flipping a coin 10 times to get 5 heads

qbinom(0.5,10,0.5) # value of x to get 0.5 prob

dbinom(5,10,0.5) #probability of getting exactly 5 heads in 10 flips

visualize.binom(5,10,0.5, section ='upper') # greated than 5 heads on 10 flips



##Poisson Distribution##

# 3.6 people arrive at a counter every 10 min. What is the probability of having 7 people 
#in 10 minutes?

dpois(7,3.6) # exact at 7

ppois(7,3.6) -ppois(6,3.6) # since ppois is below 7, you need to subtract


visualize.pois(c(0,8),3.6, section ='tails') #visualizing to get more that 7 or less than 0 people



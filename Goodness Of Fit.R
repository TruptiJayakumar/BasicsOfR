# A coin is flipped 100 times and we get 40 heads and 60 tails. Is the coin biased?


flip <- c(40,60)
chisq.test(x= flip, p=c(0.5,0.5))
#P value is low hence reject H0 , coin is biased




# A shirt manufacturing company follows the following norms to manufacture shirts
# S - 20%, M - 40%, L -30% and Xl - 10%
# Observed historical values - S-211, M-402,L-297 and Xl-80
# is there a significant difference between Observed and Expected?

shirt_E <- c(0.20,0.40,0.30,0.10)
shirt_O <- c(211,402,297,80)

chisq.test(x= shirt_O, p =shirt_E)

#X-squared = 4.5909


# Visualizing the same

library(visualize)
visualize.chisq(stat = 4.59, df =3, section = 'upper')

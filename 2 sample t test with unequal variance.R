# unequal variance for two sample t test

mc1 <- c(150,152,154,152,151)
mc2 <- c(144,162,177,150,140)

# Need to check if variance is equal or not
var.test(x =mc1, y=mc2)
# Fail to accept H0 as p is low. Means the two machines have unequal variance


#Performing t test

t.test(x=mc1, y=mc2,var.equal = F)
# p value is high means fail to reject H0, Both these machines are not significantly different.


#Visualizing:

boxplot(mc1, mc2)

# equal variance for two sample t test

mc1 <- c(150,152,154,152,151)
mc2 <- c(156,155,158,155,154)

# Need to check if variance is equal
var.test(x =mc1, y=mc2)
# Accept H0 that the ratio of both these machines is equal to 1, equal variance


#Performing t test

t.test(x=mc1, y=mc2,var.equal = T)
# p value is low means fail to accept H0, Both these machines are significantly different.


#Visualizing:

boxplot(mc1, mc2)

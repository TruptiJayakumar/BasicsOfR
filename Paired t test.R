# Paired t test

bp_before <- c(120,122,143,100,109)
bp_after <- c(122,120,141,109,109)


#H0 --> there is no significant difference
#HA --> there is a significant difference

t.test(x= bp_before, y=bp_after, paired =T)
# P high, means accept H0

#visualize

bp_diff <- bp_after -bp_before
bp_diff

boxplot(bp_diff)

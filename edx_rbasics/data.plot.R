#scatter plots
pop_in_mills <- murders$total/10^6
tot_gun_murders <-murders$total
plot(pop_in_mills, tot_gun_murders)
#histograms
hist(murders$population/murders$total*100000)
murders <- mutate(murders, rate=population/total*100000)
#library(dplyr)
#boxplot
boxplot(rate~region, data = murders)
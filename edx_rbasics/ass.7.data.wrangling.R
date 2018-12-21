library(dslabs)
data("murders")
library("dplyr")
# Redefine murders so that it includes column named rate with the per 100,000 murder rates
murders <- mutate(murders,rate=total/population*100000)
# mutate murders, add rank highest to lowest
murders <- mutate(murders,rank=rank(-rate) )
#show only state names and abb
select(murders,state,abb)
#show top 5 states with highest murder rate
select(murders,state,rank,rate) %>% filter(rank <= 5)
#filter rank <= 5
filter(murders,rank <= 5) %>% select(state,rank)# %>% sort(rank)
#select(murders,sort(murders$rate)
#create new data.drame removes south region
no_south <- filter(murders, region != 'South')
nrow(no_south)
murders_nw <- filter(murders, region %in% c('Northeast','West'))
nrow(murders_nw)
# Create a table, call it my_states, that satisfies both the conditions 
my_states <- filter(murders, region %in% c('Northeast', 'West' ) & rate < 1)
select(my_states, state, rate, rank)
# Create new data frame called my_states (with specifications in the instructions) from the original murders
data("murders") 
mutate(murders,rate=total/population*100000, rank=rank(rate)) %>% 
  filter(region %in% c('Northeast', 'West' ) & rate < 1) %>% select(state, rate, rank) %>% order(state, rate, rank)
?order

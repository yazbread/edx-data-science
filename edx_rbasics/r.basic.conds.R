data("murders")
murder_rate <- murders$total/murders$population*100000
ind <- which.min(murder_rate)
if(murder_rate[ind] < 1.5) {
  print(murders$state[ind])
} else {
  print("No State that Low" )
}
a <- c(0,1,2,-4,5)
result <- ifelse(a > 0, 1/a, NA)
result
#replace all NA values in a vector with 0
data(na_example)
sum(is.na(na_example))
no_nas <- ifelse(is.na(na_example), 0, na_example)
sum(is.na(no_nas))
#any
z <- c(TRUE, TRUE, FALSE)
any(z)
z <- c(FALSE, FALSE, FALSE)
any(z)
z <- c(TRUE, TRUE, TRUE)
all(z)
z <- c(FALSE, FALSE, FALSE)
all(z)
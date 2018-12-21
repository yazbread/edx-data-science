x <- c(1,2,-3,4)
if(all(x>0)){
  print("All Positives")
} else{
  print("Not All Positives")
}
char_len <- nchar(murders$state)
new_names <- ifelse(nchar(murders$state) > 8, murders$abb, murders$state)
head(char_len)
# Create a function sum_n that for any given value, say n, creates the vector 1:n, and then computes the sum of the integers from 1 to n.
sum_n <- function(n) {
  n <- sum(c(1:n))
  n
}
# Use the function to determine the sum of integers from 1 to 5000
sum_n(5)
altman_plot <- function(x, y) {
  plot(x+y, y-x)
}
altman_plot(2, 10)

x <- 8
my_func <- function(y){
  x <- 9
  print(x)
  y + x
}
my_func(x)
print(x)
example_func <- function(n){
  x <- 1:n
  sum(x)
}

# Here is the sum of the first 100 numbers
example_func(100)

# Write a function compute_s_n that with argument n and returns of 1 + 2^2 + ...+ n^2

compute_s_n <- function(n){
  s_n <- vector(length = n)
  for (x in 1:n) {
    s_n[x] <- x^2
  }
  sum(s_n)
}
compute_s_n(10)

# Report the value of the sum when n=10
# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Create a vector for storing results
s_n <- vector("numeric", 25)

# write a for-loop to store the results in s_n
for(i in 1:25){
    s_n[i] <- compute_s_n(i)
}

n <- 1:25

#Check the Math Plots_n (on the y-axis) against n (on the x-axis).
plot(n, s_n)
identical(s_n, identical(s_n, n*(n+1)(2n+1)/6))

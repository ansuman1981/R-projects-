# Lab objectives
# 1. Write first R functions
# 2. Learn to use apply / lapply
###############################################

##############################################
# 1. Writing your first functions
func1 <- function(x)
{
  y <- 0.8*x + 0.5
  return (y)  
  # some places teach return is not necessary; but let's retain it for clarity
}
func1(5)

# Function with 2 arguments
func2 <- function(x,y)
{
  z <- 0.8*x + 0.5 *y
  return (z)
}
func2(5,2)

# Write a simple function that concatenate your name with 'student in JCU'
func3 <- function(x){
  z <- paste(x," is lecturer at JCU")
  return (z)
}
func3("Eric")

###############################################
# 2. Using functions for data manipulation
data(iris)
# the spatial length column is incorrect and should be
# if greater than 5.0 -> 1.2x
# else -> 0.8x
# write a function that shows this
iris$Sepal.Length = ifelse(iris$Sepal.Length > 5.0, 1.2*iris$Sepal.Length, 0.8 * iris$Sepal.Length)

# even more if etc. generating new 'corrected' column 'y'
iris$y = ifelse(iris$Sepal.Width > 3.0, iris$Sepal.Length*2,
                ifelse(iris$Sepal.Length > 7.0, 4.4,
                       iris$Sepal.Width*1.1))
detach(iris)
# more conditions with & and |
# See operators in https://www.statmethods.net/management/operators.html
iris$y = with(iris,ifelse(Sepal.Width > 3.0 & Petal.Width > 0.1, Sepal.Length*2,
                          ifelse(Sepal.Length > 7.0, 4.4,
                                 Sepal.Width*1.1))) 

#######################################################
# 3. Installing and loading new libraries
#install.packages("dplyr")
library(dplyr)

#####################################################
# 4. More complex functions in R
# when the function gets more complex, you can use lapply
# here we do it on a matrix
m <- data.frame(matrix(data=cbind(rnorm(30, 0), rnorm(30, 2), rnorm(30, 5)), nrow=30, ncol=3))
head(m,3)
dim(m)
apply(m,1, mean)  # 1 denotes apply mean (average) on the col/row? (rows)
apply(m,2, mean)   # 2 denotes apply mean (average) on the col/row?


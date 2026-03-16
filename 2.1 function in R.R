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


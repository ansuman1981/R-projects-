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
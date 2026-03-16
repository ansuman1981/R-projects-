# 1 basic of R
# 1.	Download and install R 
# 2.	Download and install RStudio 
# 3.  Run RMarkdown as for a report
# https://rmarkdown.rstudio.com/authoring_basics.html
# 4. Run ShinyLab and set up account in 
# https://www.shinyapps.io/
# 
###################################################

# 1.	Some helpful commands
# print() and "#" and ls() and rm() and "ctrl+L" (to clear)
var1 = 1
print(var1)
ls()
rm(var1)
help()
?rm()
###################################################
# 2.	Binary operations and the concatenate- c() -function-
#   Create the following objects
# This is a concatenated list
X = c(3, 6, 8);
Y = c(2, 9, 0);
Z = c(2,"text");
print(typeof(X)) # what are inside X and Y? 
# a.	Add X and Y and save in Z1. Operator key -"+"
Z1 = X + Y
Z1
# b.	Multiply X and Y (element wise) and save in Z2. Operator - "*"
Z2 = X*Y
Z2
# c.	Divide X by Y and save in Z3. Check "Inf"
Z3 = X/Y
Z3 

####################################################
# 3. Checking data integrity
# if there is any "NaN" (not a number) and "Inf"?
is.nan(X)
is.infinite(X)
# Try out other functions with is.x 
# check the third element of stored object Z3
Z3[3]
#In R, missing values are represented by the symbol NA (not available). 
# Impossible values (e.g., dividing by zero) 
#are represented by the symbol NaN (not a number) 

# Save and print these (logical) objects - 
Z4 = 1<0
Z5 = 2 < 3 
Z6 = c(4,6,5,7,10,9,4,15) < 7

#####################################################
# 4.	Generating sequences 
Z7 = seq(10)
Z8 = seq(0,10)  # how does this differ (if any)?
# Create the sequence of the following numbers and store in Z - 
#     a.	The digit 5 repeating 5 times.
Z9 = rep(5,5)
#     b.	The digits 5 and 6 repeating 5 times each.
# hint ?rep
rep(5:6, each = 5)
#     c.	The digits 5 and 6 each present 5 times but alternating.
Z10 = rep(5:6, 5)
#     d.	 Check the length of each vector.
length(Z10)

####################################################
# 5. Basic Text processing
# Create an object containing the vowels of English language and store in A1.
A1 = c("a","e","i","o", "u")
# Store your name in an object called N. Print N. Use the paste() function.
N = "Eric"
paste(N)
# Create an R object N2 as "This is course MA " + 1580 with paste
N2 = paste("This is course MA",1580)
N2

#####################################################
# 6. Checking out data types
# Check out "str()", "class()" and "typeof()"-
#     a.	z1
str(Z1)
class(Z1)
typeof(Z1)
#     b.	Z4
str(Z4)
class(Z4)
typeof(Z4)
#     c.	N
str(N)
class(N)
typeof(N)

#     d.  N2  
str(N2)
class(N2)
typeof(N2)


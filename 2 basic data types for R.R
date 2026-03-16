# Lab Objectives:
# 1. Understanding the R different types
# 2. Manipulating tabular data
# 3. Reading files
# 4. Using date values

##################################################
# 1. Types of Data - Lists and vectors
# Lists hold different data types and are recursive
# Vectors store same types and are not recursive
x1 <- c(3,4,"Text")
x2 <- list(3,4,"Text")
x3 <- c(1:3, c("four", "five"))
x4 <- list(1:3, c("four", "five"))

is.vector(x1)  # is x1 vector or list?
is.list(x1)

# what are x3[4] and x4[4]
# what are x4[1]&x4[2] and x3[1] & x3[2]

#################################################
# There are default datasets in R. We will use a lot of them.
# once these datasets are loaded, they are in dataframes
# which are literally just tables of data
# For eg CO2 https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/zCO2.html
# Try out other datasets https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html
df<-data(CO2) # load a built-in R dataset
print(CO2)
df1<- CO2
help(data.frame)

# What are the columns in CO2?
names(CO2) 
data()  # return all datasets in R

##############################################
# 2. Matrices
x = rep(c(0,1),6)
# b. Create a 2x6 matrix using x. print the third column. 
m.1 = matrix(x,nrow = 2,ncol=6)
m.1[,3]  # rows, columns
# c. create a 6x2 matrix using x. print the second row.
m.2 = matrix(x,nrow = 6,ncol=2)
m.2[2,]
# print out the dimensions
dim(m.1)
# using x create a 2 x 6 matrix that looks like
# default matrix() option fills a matrix object by columns. 
# All rows of a column are filled first and then move to next column. 
# But, to obtain the solution below we need to instruct R to fill by rows instead.
m.3 = matrix(x, nrow=6, ncol =2, byrow = TRUE) 
# [,1] [,2]
# [1,]    0    1
# [2,]    0    1
# [3,]    0    1
# [4,]    0    1
# [5,]    0    1
# [6,]    0    1

################################################
# 3. Dataframes
# Creating dataframes from scratch
name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas')
score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19)
attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1)
qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no','yes')
df2 <- data.frame(name, score, attempts, qualify)

# Check properties of dataframes
is.data.frame(df2)
is.numeric(df2)
is.list(df2) # a dataframe is a list (generic/ basic form of storage in R)

colnames(df2)
class(df2)
dim(df2)

# Accessing different data - columns of data.frame
df2["name"]
df2[1,1]
df2[1,]
df2[,1]

#######################################################
# 4. Dataframe manipulations
# deleting and adding columns from dataframe
#  
df2["name"] <- NULL
df2$name <- name  # re-create the column name after deleting it
title = c("Mr", "Mr", "Ms", "Mr", "Ms", "Mr", "Ms", "Mr", "Mrs", "Ms") 
df3 <- cbind(df2, title)
# renaming columns
names(df2)[4] <- "Names" 
names(df2)[names(df2) == "score"] <- "marks"

#######################################################
# 5 Reading in data files as dataframes
# First set the working directory to be the same
# Session -> Set Working Directory
# it needs to be / and not \
#setwd("C:/Users/jc822081/OneDrive - James Cook University/Teaching/Data")
getwd()
df4 <- read.csv2("ourworld.csv", header = TRUE, sep = ",")
df5 <- read.csv2("country_data.csv", header = TRUE, sep = ",")

# Create a new column of data from manipulation
df4$New_GDP = df4$GDP * 1.03
# Coercion data conversion df4$Birthrate and df4$Deathrate
# Why is it necessary?
#sometimes numeric-looking columns are not imported as numeric.
# Instead, they may come in as character or factor, for example,there are missing values
df4$NetBirth = as.numeric(df4$Birthrate) - as.numeric(df4$Deathrate)

################################################
# 6. Date manipulation 
# Converting date data for manipulations
# date format conventions
# https://www.statmethods.net/input/dates.html 
date_1 <-  "21-01-2021"
is.character(date_1)
date_2 = as.Date(date_1, format="%d-%m-%Y")
typeof(date_2)
# what is the data type of the new variable?
# convert particular column of date 
df5$date_n = as.Date(df5$date, format="%d/%m/%Y")



# Title: Software Carpentry Workshop Notes
# Author: Marta Calatayud
# Data: Friday, September  15th, 2017

#### load packages #### 
#including this symbols, allow us to navigate trough the documen
1 + 100
3 + 5 * 2
# this is a comment. Use of titles, headers in the script
2/1000000
200000000
#function arguments
log(1)
log(1e4, base=10)
?log
#numerical comparisions == can be only used to compare vectors/text or peaces of texts
#?all.equal=explanation how to use for comparing real numbers
#variables and assignment
x <-1/40
#dont use = sign, use equal instead, use only = for operations
#when run something, it is overwritten in the file you have, no questions or checkings
x <- 100
x <- x + 1
#note that the value 100, with x+1 is 101 (it is overwritten)
fm.ruben <-42
fm.swc <- 41

#use always the same way to writte the names of the files
#error: function vs. names. E.g. if you put mean and assignes a number to a mean (that need to be calculated afterwards), you will get confused 
#not name folders or documents with names of functions!!
fm.likes.pie <- pi

#### vectorization ####
1:5
2^(1:5)
x <- 1:5 #with this x you create a doc in the global environment
#you can look in the history section of the R and find functions

2^x

#### environment ####

ls() #this is to list all the files
ls(all.names = TRUE) #this is the script for showing all the docs in global environment/project, even hidden objects

rm(x)#remove an object
ls()

#an output of ls can be stored as a vector

x <-1:5
current.environment <- ls()
rm(list)
sessionInfo() #this is for getting all packages installed
#sometimes packages have conflicts: you can find this in internet/google
#hosw to insatll a package
install.packages("ggplot2")
install.packages("plyr")
install.packages("gapminder")
installed.packages()
mass <- 47.5
age <- 122
mass <- mass * 2.3
age <- age - 20

#assign variables with <-, not equal!!!
#help?(function)
#help for operators, we need to quote
#vignette() how the functions are organized in a package, to check how data need to be organized
library(ggplot2)
vignette(package="ggplot2")
vignette("ggplot2-specs")

#asking questions in the website stackoverflow.com-questions. Minimal way of asking: 
#where do you have an issue with an example (simplfied) including the version and servera and all the relevant info
c(1, 2, 3)
c('d', 'e', 'f')
c(1, 2, 'f')
sep(fm.ruben)
combovect <- c(1, 2, "f")
class(combovect)
mode(integr.vector)
mode(integer.vector)
is.vector(com)
getwd()
setwd(dir = )

#### Ruben: csv. files are smaller and portable, if you want to import data from excel (big amount) it is slow
#Package readxl, excelxl is really slow

#### read in data ####
cats <- read.csv("SWC/data/feline-data.csv")
cats <- read.csv("feline-data.csv")

read.table("SWC/data/feline-data.csv")
#read.csv2 is to say comas as separator. 
#dataframe
class(cats)
cats
cats$coat
cats$weight
#different columns can have different types of data
#the $ cab be only used in vector, no matrix
mat <- matrix(nrow = 4, ncol= 4)
cats$weight + 2
paste ("My cat is", cats$coat)

typeof(cats$weight)
typeof(cats$weightcoat)

#data type is important to know what we can do

typeof(1L)
typeof(1)

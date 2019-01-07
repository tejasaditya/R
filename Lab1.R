# Lab 0 - Intro to R and RStudio
# Created on January 4 2019.
# Author - Tejas Aditya

source("http://www.openintro.org/stat/data/arbuthnot.R") # fetching data from online source
arbuthnot #print all data (not recommended due to massive amount of data)
dim(arbuthnot) #getting the rows and columns i.e. dimensions
names(arbuthnot) # names of variables/column names
arbuthnot$boys # the $ sign specifies the column in the matrix

print("Exercise 1")
arbuthnot$girls # Exercise 1
plot(x = arbuthnot$year, y = arbuthnot$girls) # scatter plot for girls over years

print("Exercise 2")
plot(x = arbuthnot$year, y = arbuthnot$girls, type = "l") #line plot

?plot #help/info about plots
arbuthnot$boys + arbuthnot$girls #computing total no. sby adding both columns
plot(arbuthnot$year, arbuthnot$boys + arbuthnot$girls, type = "l") # line plot for total over years
arbuthnot$boys/arbuthnot$girls #proportions of boys vs girls over years
arbuthnot$boys/(arbuthnot$boys + arbuthnot$girls) #proportion of boys in respect to total over years

print("Exercise 3")
plot(arbuthnot$year, arbuthnot$boys/(arbuthnot$boys + arbuthnot$girls), type = "l") #plotting the proportions of boys in respect to total

arbuthnot$boys > arbuthnot$girls #boolean results if statement true for all observation intervals

print("On Your Own")
source("http://www.openintro.org/stat/data/present.R") # importing new data
print("Question 1")
present$year #lists all values in year column
# could alternatively use present$year(head) and present$year(tail)
dim(present) #dimensions of data set
names(present) # variable/coulumn names

print("Question 3")
present$boys > present$girls #comparing no. of boys vs girls in new data set for boolean value

print("Question 4")
plot(present$year, present$boys/present$girls, type = "l") #line plots boys/girls ratio

print("Question 5")
which.max(present$boys+present$girls) #returns  index of greatest element in all the data
present$year[[22]] #prints the 22nd element in the specified list i.e. the year column

# END OF Lab 0 - Intro to R and RStudio

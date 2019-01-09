# Lab 1 - Introduction to Data
# Created on January 4 2019.
# Author - Tejas Aditya

source("http://www.openintro.org/stat/data/cdc.R") #fetching data from online source

print("Exercise 1")
dim(cdc)
names(cdc)

head(cdc) # first few entries(rows) of data
tail(cdc) # last few entries(rows) of data
summary(cdc$weight) #returns a numerical summary: minimum, first quartile, median, mean, second quartile, and maximum
mean(cdc$weight) #returns mean of all values in weight column
var(cdc$weight) # returns variance 
median(cdc$weight) #returns median of data
table(cdc$smoke100) # shows the distribution of data under smoke100 variable i.e. frequency
table(cdc$smoke100)/20000 #return relative distribution frequency for smoke100 variable
barplot(table(cdc$smoke100)) #makes a bar graph of the distributed data under smoke100
smoke <- table(cdc$smoke100) #storing the values of the table command in the smoke variable
barplot(smoke) #bar graph of smoke variable

print("Exercise 2")
summary(cdc$height)
70-64               #calculating interquintile range for height
summary(cdc$age)
57-31               #calculating interquintile range for age
table(cdc$gender)/20000
table(cdc$exerany)/20000
table(cdc$gender)
table(cdc$genhlth)/20000

table(cdc$gender, cdc$smoke100) #frequency of the smoke100 variable by gender

print("Exercise 3")
mosaicplot(table(cdc$gender, cdc$smoke100)) #creating mosiac plot

cdc[567, 6] #getting the specific value in row 567 and column 6
cdc[1:10, 6] #getting the values in rows 1-10 and column 6
1:10 #looking at the observed respondents in the range
cdc[1:10, ] #all observations of rows 1-10
cdc[, 6] #all observed values under column 6
cdc$weight[567] #value at row 567 under weight variable
cdc$weight[1:10] #range of values of row 1-10 under weight variable
mdata <- subset(cdc, cdc$gender == "m") #storing all observation with m values under gender in the variable mdata
head(mdata)
m_and_over30 <- subset(cdc, cdc$gender == "m" & cdc$age > 30) #storing all data that meets all the requirements under the variable m_and_over30
m_and_over30 <- subset(cdc, cdc$gender == "m" | cdc$age > 30) #storing all data that meets one of the requirements under the variable m_and_over30

print("Exercise 4")
under23andsmoke <- subset(cdc, cdc$age<23 & cdc$smoke100 == 1)

boxplot(cdc$height) #creating a box plot of variable height
boxplot(cdc$height ~ cdc$gender) #creating a box plot of variable height as a function of gender

print("Exercise 5")
bmi <- (cdc$weight/cdc$height^2) * 703 #creating a customized equation
boxplot(bmi ~ cdc$genhlth)
boxplot(bmi ~ cdc$exerany)

hist(cdc$age) #creating a histogram
hist(bmi)
hist(bmi, breaks = 50) #specifying the no. of splits in the histogram

print("On Your Own")
print("Ouestion 1")
plot(cdc$weight,cdc$wtdesire)

print("Ouestion 2")
wdiff <- (cdc$weight-cdc$wtdesire)

print("Ouestion 4")
boxplot(wdiff)
hist(wdiff, breaks = 100)

print("Ouestion 5")
summary(wdiff)
wdiffmen <- subset(wdiff, cdc$gender == "m")
wdiffwomen <- subset(wdiff, cdc$gender == "f")
boxplot(wdiff~cdc$gender)
summary(wdiffmen)
summary(wdiffwomen)

print("Ouestion 6")
mean(cdc$weight)
sd(cdc$weight) #standard deviation uner variable weight
weight_sd_compare <- subset(cdc, cdc$weight <= (mean(cdc$weight) + sd(cdc$weight)) & cdc$weight >= (mean(cdc$weight) - sd(cdc$weight))) #all data withing one standard variation of the mean
dim(weight_sd_compare)/20000

# END OF Lab 1 - Introduction to Data
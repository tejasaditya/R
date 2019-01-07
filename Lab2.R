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
table(cdc$smoke100)
table(cdc$smoke100)/20000
barplot(table(cdc$smoke100))
smoke <- table(cdc$smoke100) #repetition of line 13
barplot(smoke)

summary(cdc$height)
70-64
summary(cdc$age)
57-31
table(cdc$gender)/20000
table(cdc$exerany)/20000
table(cdc$gender)
table(cdc$genhlth)
4657/20000
table(cdc$gender, cdc$smoke100)
mosaicplot(table(cdc$gender, cdc$smoke100))
cdc[567, 6]
cdc[1:10, 6]
1:10
cdc[1:10, ]
cdc$weight[567] #line 29
cdc$weight[1:10] #line 30
mdata <- subset(cdc, cdc$gender == "m")
head(mdata)
m_and_over30 <- subset(cdc, cdc$gender == "m" & cdc$age > 30)
m_and_over30 <- subset(cdc, cdc$gender == "m" | cdc$age > 30)
under23andsmoke <- subset(cdc, cdc$age<23 & cdc$smoke100 == 1)
boxplot(cdc$height)
boxplot(cdc$height ~ cdc$gender)
bmi <- (cdc$weight/cdc$height^2) * 703
boxplot(bmi ~ cdc$genhlth)
hist(cdc$age)
hist(bmi)
hist(bmi, breaks = 50)
plot(cdc$weight,cdc$wtdesire)
wdiff <- (cdc$weight-cdc$wtdesire)
boxplot(wdiff)
hist(wdiff, breaks = 100)
summary(wdiff)
wdiffmen <- subset(wdiff, cdc$gender == "m")
wdiffwomen <- subset(wdiff, cdc$gender == "f")
boxplot(wdiff~cdc$gender)
summary(wdiffmen)
summary(wdiffwomen)
mean(cdc$weight)
sd(cdc$weight)
weight_sd_compare <- subset(cdc, cdc$weight <= (mean(cdc$weight) + sd(cdc$weight)) & cdc$weight >= (mean(cdc$weight) - sd(cdc$weight)))
dim(weight_sd_compare)/20000
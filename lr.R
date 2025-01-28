library(readr)
library(dplyr)
library(knitr)
library(ggplot2)

# construct path to file
#fpath = file.path("ad.csv")
ad_df <- read.csv("advertising.csv")

head(ad_df, 5)
attach(ad_df)

#Correlation: determines whether a variable can influence other 
#variable´s value.
cor(TV, Sales)

# graphical output of value dispersion between two variables.In this case is 
# used to study the tendency of data to make accurate prediction of the 
# tendencies
plot(TV, Sales)

simple_reg = lm(Sales~TV)
summary(simple_reg)



cor(Radio, Sales)

plot(Radio, Sales) 

simple_reg2 = lm(Sales~Radio)
summary(simple_reg2)


cor(Newspaper, Sales)

plot(Newspaper, Sales)

simple_reg3 = lm(Sales~Newspaper)
summary(simple_reg3)
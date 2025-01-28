#Load/Import R Libraries
library(readr)
library(dplyr)
library(knitr)
library(ggplot2)

#Importing customized libraries
source("functions.R")

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

#Display statistical values with customized function
displayStatisticalData(Radio, Sales)
displayStatisticalData(Newspaper, Sales)



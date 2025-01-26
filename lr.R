library(readr)
library(dplyr)
library(knitr)
library(ggplot2)

# construct path to file
fpath = file.path("customer_shopping_data.csv")


# Read CSV File
shopping_df = read.csv(fpath)

#age = read.table(shopping_df["age"])

kable(shopping_df, caption = "data")

df = select(shopping_df, age, quantity)

summary(df)

ggplot(data = datos) + geom_point(aes(x = x, y = y), col='blue')

#x <- shopping_df[, 4]
#y <- shopping_df[, 6]

#quant = shopping_df["quantity"]
# Study Cases:
# Quantity in function of age
# 


#lmQuantity = lm(quantity~age, data = shopping_df) #Create the linear regression
#summary(lmQuantity)

#lmPrice2 = lm(quantity~price, data = shopping_df) #Create the linear regression
#summary(lmPrice2)

#print(x)
#plot(y, pch = 16, col = "blue") #Plot the results
#abline(lmPrice2) #Add a regression line


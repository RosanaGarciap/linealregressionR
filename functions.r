# This fuction displays scattered plot, and summary of statistical
#values for giving dependent and independent variables to study
displayStatisticalData<- function(x, y) {
#Correlation: determines whether a variable can influence other 
#variable´s value.
cor(x, y)

# graphical output of value dispersion between two variables.In this case is 
# used to study the tendency of data to make accurate prediction of the 
# tendencies
plot(x, y)

simple_reg = lm(y~x)
summary(simple_reg)
}
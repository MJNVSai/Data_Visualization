install.packages("readxl")
library("readxl")

# ggplot installation
install.packages("ggplot2")
library(ggplot2)
install.packages("dplyr")
library(dplyr)

getwd()
setwd(choose.dir())
getwd()


re = read_excel("Bank_analysis.xlsx")
re = data.frame(re)
re
class(re)

# mfrow: determines a vector with row and column values for the grid

#par(mfrow = c(3,2))
par(mfrow = c(1,1))

# Box Plot
ggplot(re, aes(x = Bank.Deposits, y = 1)) + geom_boxplot()

# Scatter Plot
ggplot(re, aes(x = Name, y = Bank.Loans)) + geom_point()


# Outliers in Box Plot
boxplot(re$Bank.Deposits,plot=TRUE)$out

# histogram
ggplot(data = re) + geom_histogram(aes(x = re$Saving.Accounts))

# Bar Chart
barplot(re$Estimated.Income, names.arg = re$Name, xlab ="Names", 
        ylab ="Income", 
        main ="Bar Chart")

# Pie Chart

pie(re$Credit.Card.Balance, re$Nationality,
      main = "PIE chart", col = rainbow(5))





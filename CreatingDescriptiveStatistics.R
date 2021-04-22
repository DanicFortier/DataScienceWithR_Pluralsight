#loadign package dplyr
library(dplyr)

#Importing data
data(mtcars)

#rename columns
names(mtcars)[names(mtcars) == "mpg"] <-"FuelEconomy"
names(mtcars)[names(mtcars) == "cyl"] <-"Cylinders"
names(mtcars)[names(mtcars) == "am"] <-"Transmission"
head(mtcars, 6)

fdata = factor(mtcars[,9])
fdata
rdata = factor(mtcars[,9], labels = c("Automatic", "Manual"))
rdata
mtcars["Transmission"] = rdata

#changing transmisson to be more descriptive
mtcars$Transmission[mtcars$Transmission == 0] <- "Automatic"
mtcars$Transmission[mtcars$Transmission == 1] <- "Manual"

#select a subset of columns
cars = select(.data = mtcars,
              Transmission,
              Cylinders,
              FuelEconomy)
head(cars)


#Debut du script
table(cars$Transmission)

# Get the minimum value
min(cars$FuelEconomy)

# Get the maximum value
max(cars$FuelEconomy)

# Get the average value
mean(cars$FuelEconomy)

# Get the median value
median(cars$FuelEconomy)

# Get the quantiles
quantile(cars$FuelEconomy)

# Get the standard deviation
sd(cars$FuelEconomy)

# Get the correlation coefficient
cor(x = cars$Cylinders, y = cars$FuelEconomy)

# Summarize an entire table
summary(cars)

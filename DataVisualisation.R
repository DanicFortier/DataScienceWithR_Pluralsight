# Loading le package ggplot2
library(ggplot2)

#Importing data
data(mtcars)

#rename columns
names(mtcars)[names(mtcars) == "mpg"] <-"FuelEconomy"
names(mtcars)[names(mtcars) == "cyl"] <-"Cylinders"
names(mtcars)[names(mtcars) == "am"] <-"Transmission"


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

# Create a frequency bar chart
ggplot(
  data = cars,
  aes(x = Transmission)) + 
  geom_bar() + 
  ggtitle("Count of Cars by Transmission Type") +
  xlab("Transmission Type") +
  ylab("Count of cars")

# Create a histogram

ggplot(
  data = cars,
  aes(x = FuelEconomy)) +
  geom_histogram(
    bins = 10) + 
  ggtitle("Distribution of Fuel Economy") +
  xlab("Fuel Economy (mpg)")+
  ylab("Count of Cars")

# Create a density plot
ggplot(
  data = cars,
  aes(x = FuelEconomy)) +
  geom_density() + 
  ggtitle("Distribution of Fuel Economy") +
  xlab("Fuel Economy (mpg)")+
  ylab("Count of Cars")

# Create a scatterplot
ggplot(
  data = cars,
  aes(x = Cylinders, y = FuelEconomy)) + 
  geom_point() + 
  ggtitle("Fuel Economy by Cylinders") +
  xlab("Number of Cylinders") +
  ylab("Fuel Economy (mpg)")




  
#loadign package dplyr
library(dplyr)

#Importing data
data(mtcars)

head(mtcars, 6)
#rename columns
names(mtcars)[names(mtcars) == "mpg"] <-"FuelEconomy"
names(mtcars)[names(mtcars) == "cyl"] <-"Cylinders"
names(mtcars)[names(mtcars) == "am"] <-"Transmission"
head(mtcars, 6)

object.size(mtcars)

#Je transforme les 0 et 1 dans la colonne transmission en enum
# fdata = factor(mtcars[,9])
# fdata
# rdata = factor(mtcars[,9], labels = c("Automatic", "Manual"))
# rdata
# mtcars["Transmission"] = rdata # affectation dans la colonne Transmission
# head(mtcars, 6)
# test
mtcars$Transmission[mtcars$Transmission == 0] <- "Automatic"
mtcars$Transmission[mtcars$Transmission == 1] <- "Manual"
#print
head(mtcars, 6)
object.size(mtcars)


#select a subset of columns
temp = select(.data = mtcars,
              Transmission,
              Cylinders,
              FuelEconomy)
head(temp)
object.size(temp)

#Compute a new column, mutate prends conversio
conversion_miles_per_galon_to_km_per_litres <- 0.425
temp <- mutate(.data = temp, Consumption = FuelEconomy * conversion_miles_per_galon_to_km_per_litres)
head(temp)


# Group by a column
temp <- group_by(.data = temp, Cylinders)
head(temp)

# Aggregate based on groups
temp <- summarize(
  .data = temp,
  Avg.Consumption = mean(Consumption)
)
head(temp)

# Arrange the rows in descinding order
temp <- arrange(.data = temp,
                desc(Avg.Consumption))
head(temp)


# Convert to data frame
efficiency <- as.data.frame(temp)
print(efficiency)


# Save the results to a csv file
write.csv(
  x = efficiency,
  file = "Fuel_Efficiency.csv",
  row.names = FALSE
)












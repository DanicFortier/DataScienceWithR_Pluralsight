x <- "Hello World"
print(x)

"Hello World" -> f
print(f)

l = TRUE;
i = 123L
h = 1.23
c = "ABC 123"
d = as.Date("2001-02-03")

f = function(x){
  return (x + 1)
}

#Creating a vector
v <- c(1, 2, 3);

#Les séquences
s = 1:5
s

# Creating a matrix
a = array(data = 1:8,
          dim = c(2, 2, 2))

# Creation d'une liste heterogene
l = list(TRUE, 123L, 2.34, "abc")
l

#Les factors (enum)
categories = c("Male", "Female", "Male", "Male", "Female")
factor = factor(categories)
factor
levels(factor)
unclass(factor)

# Les dataframes
df = data.frame(
  Name = c("Cat", "Dog", "Cow", "Pig"),
  HowMany = c(5, 10, 15, 20),
  IsPet = c(TRUE, TRUE, FALSE, FALSE))

#Indexing data frames by row and column
df[1, 2]
df[1,]
df[ , 2]
df[["HowMany"]]
df$Name

#subsetting
df[c(2, 4), ] #retourne les lignes 2 et 4
df[2:4, ] # retourne les lignes 2 a 4
df[c(TRUE, FALSE, TRUE, FALSE),] #retourne juste les lignes que c'est ecrit true
df[df$IsPet == TRUE, ] #Retourne les ligne qui ont isPet == true c'est un genre de WHERE
df[df$HowMany > 10,] # un autre where
df[df$Name %in% c("Cat", "Cow"),]

#R est vectoriel
1 + 2
c(1, 2, 3) + c(1, 2, 3)

m <- matrix(1:6, 2, 3)
n <- matrix(1:6, 2, 3)
m == n #retourne une matrix des resultat de la compaison
identical(m, n) # retourne vrai ou faux


# Installing packages
install.packages("dplyr")

Y#Loading packages
library("dplyr")



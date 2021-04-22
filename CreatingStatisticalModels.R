data("iris")
head(iris)
plot(
  x=iris$Petal.Length,
  y=iris$Pepal.Width,
  main = "Iris Petal Length vs. width",
  xlab = "Petal Length (cm)",
  ylab = "Petal width (cm)"
)
iris
model <- lm(formula = Petal.Width ~ Petal.Length,
            data=iris)
summary(model)


#draw a regression line on plot
lines(
  x = iris$Petal.Length,
  y = model$fitted,
  col = "red",
  lwd = 3
)

# Get correlation coefficient
cor(x = iris$Petal.Length,
    y = iris$Petal.Width)
predict(
  object = model,
  newdata = data.frame(
    Petal.Length = c(2, 5, 7)
  )
)

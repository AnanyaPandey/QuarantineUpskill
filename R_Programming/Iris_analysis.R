
irisdf <- iris
plot(
  x = irisdf$Petal.Length,
  y = irisdf$Petal.Width,
  main = "Plotting length and width data",
  xlab = "Length",
  ylab = "Width")

model <- lm(formula = Petal.Width ~ Petal.Length, data =irisdf)
# Formula is like y = f(x) This ~ depends on This
summary(model)

plot(
  x = irisdf$Petal.Length,
  y = model$residuals,
  col = "blue",
  lwd = 3
)

lines(
  x = irisdf$Petal.Length,
  y = model$fitted.values,
  col = "red",
  lwd = 3)

cor(
  x = irisdf$Petal.Length,
  y = irisdf$Petal.Width
)

newdf = data.frame(Petal.Length=c(1,2,3,4,4,5,6,7,7,8,0,10))
predict(
  object = model,
  newdata = newdf )

# plotting the residuals

length(model$residuals)
length(irisdf$Petal.Length)
length(irisdf$Petal.Width)

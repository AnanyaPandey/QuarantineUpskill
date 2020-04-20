setwd("C:/Users/pandey/Google Drive/LEARNING/R_Programming/Exercises")

data(iris)
set.seed(123)

indexes <- sample (
  x = 1:150,
  size = 100 )

train <- iris[indexes,]
test <- iris[-indexes,] # all rows EXCEPT indexes

library(tree)
model <- tree(
  formula = Species ~. ,
  data = train)

summary(model)

plot(model)
text(model)

library(RColorBrewer)
palette <- brewer.pal(3,"Set2")

# Create a Scatter plot 
plot(
  x = iris$Petal.Length,
  y = iris$Petal.width,
  pch = 19,
  col = palette[as.numeric(iris$Species)],
  main = " Plotting with and length",
  xlab = "Petal Length",
  ylab = "Petal Width")
  
  
#partition.tree(tree=model,
#               label = "Species",
#               add = TRUE)
	
	
	predictions <- predict(
	  object = model,
	  newdata = test,
	  type = "class")
	
	table(
	x = predictions,
	y = test$Species)
	
	library(caret)
confusionMatrix(
	data = predictions,
	reference = test$Species)
	
	save(model,file = "Tree.RData")
# preparing the data 
setwd("/Users/ananyapa/Gdrive/LEARNING/R_Programming/DataVisualization")
movies <- read.csv("movies.csv", header = TRUE)

# changing names for convenience 
names(movies)[names(movies) == "Runtime..Minutes."] <- "Runlength"
names(movies)[names(movies) == "Revenue..Millions."] <- "Revenue"

# REmoving unnecessary data 
movies$Director = NULL

plot(
  x = movies$Runlength,
  y = movies$Revenue,
  main = "Plotting Bivariate Quantitative",
  xlab = "Revenue (Millions)",
  ylab = "Movie LEngth (Minutes)"
)

model <- lm(movies$Revenue ~ movies$Runlength)

lines(x = movies$Runlength, y = model$fitted,
      col = "red",
      lwd = 3)

install.packages("hexbin")
library(hexbin)
hexbin <- hexbin(
  x = movies$Runlength,
  y = movies$Revenue,
  xbins = 30,
  xlab = "Movie Length",
  ylab = "Revenue"
)

plot(hexbin, main = "Plotting using Hexbin")

# Preparation for Contour Plot 
# Creating the density from data 
install.packages("MASS")
library(MASS)
density2d <- kde2d(
  x = movies$Runlength,
  y = movies$Revenue,
  n = 50)

# Creating the Contour Plot 
contour(
  x = density2d$x,
  y = density2d$y,
  z = density2d$z,
  main = "Plotting Contour",
  xlab = "Movies Runtime",
  ylab = "Movies Revenue")

# Creating a Level Plot 
image(x = density2d$x,
      y = density2d$y,
      z = density2d$z)

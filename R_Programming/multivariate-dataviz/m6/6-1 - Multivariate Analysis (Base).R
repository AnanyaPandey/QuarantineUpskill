# Visualize many variables

# Create a correlation matrix
correlations <- cor(movies[, c(2, 4, 5, 6)])

# Display correlation matrix (rounded values)
round(correlations, 2)

# Load corrgram package
library(corrgram)

# Create a correlogram
corrgram(movies)

# Create a scatterplot matrix
plot(movies[,2:6])

# Load top 100 movies
top100 <- read.csv("Top 100.csv")

# Display top 100 movie titles and revenue
head(top100[, c(1, 6)])

# Load MASS package
library(MASS)

# Create parallel coordinates plot
parcoord(top100[, c(2, 4, 5, 6)])

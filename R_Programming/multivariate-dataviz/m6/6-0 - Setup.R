# Download and install pacakges
install.packages("MASS")
install.packages("reshape2")
install.packages("GGally")

# Load packages
library(lattice)
library(ggplot2)

# Set working directory
setwd("C:/Pluralsight")

# Load CSV data
movies <- read.csv("Movies.csv")


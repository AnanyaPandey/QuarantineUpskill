# Load packages
library(lattice)
library(ggplot2)
library(dplyr)
library(RColorBrewer)

# Set working directory
setwd("C:/Pluralsight")

# Load CSV data
movies <- read.csv("Movies.csv")

# Create 2014 movies data set
movies2014 <- movies[movies$Year == 2014, ]


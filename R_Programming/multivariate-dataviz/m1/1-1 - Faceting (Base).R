# Set working directory
setwd("C://Pluralsight")

# Load time series data
timeSeries <- read.csv("TimeSeries.csv")

# Display time series
head(timeSeries)

# Create parameterized function to plot line chart 
plotFacet <- function(index, name) 
{
    values <- timeSeries[ , c(1, index)]
    
    yMax <- max(timeSeries$G)
    
    plot(
        x = values,
        type = "l",
        ylim = c(0, yMax),
        main = name,
        xlab = "Year",
        ylab = "Box Office ($M)")
}

# Create horizontal facets
par(mfrow = c(1, 4))

plotFacet(2, "G")
plotFacet(3, "PG")
plotFacet(4, "PG-13")
plotFacet(5, "R")

# Create vertical facets
par(mfrow = c(4, 1))

plotFacet(2, "G")
plotFacet(3, "PG")
plotFacet(4, "PG-13")
plotFacet(5, "R")

# Create wrapped facets
par(mfrow = c(2, 2))

plotFacet(2, "G")
plotFacet(3, "PG")
plotFacet(4, "PG-13")
plotFacet(5, "R")

# Reset 
par(mfrow = c(1, 1))


# Load Lattice package
library(lattice)

# Load row-based time series
timeSeries2 <- read.csv("TimeSeries2.csv")

# Display time series
head(timeSeries2)

# Create horizontal facets
xyplot(
    x = Box.Office ~ Year | Rating,
    data = timeSeries2,
    type = "l",
    layout = c(4, 1),
    main = "Box Office Revenue by Year and Rating",
    xlab = "Year",
    ylab = "Box Office Revenue ($M)")

# Create vertical facets
xyplot(
    x = Box.Office ~ Year | Rating,
    data = timeSeries2,
    type = "l",
    layout = c(1, 4),
    main = "Box Office Revenue by Year and Rating",
    xlab = "Year",
    ylab = "Box Office Revenue ($M)")

# Create wrapped facets
xyplot(
    x = Box.Office ~ Year | Rating,
    data = timeSeries2,
    type = "l",
    layout = c(2, 2),
    main = "Box Office Revenue by Year and Rating",
    xlab = "Year",
    ylab = "Box Office Revenue ($M)")

# Load row-based time series
timeSeries3 <- read.csv("TimeSeries3.csv")

# Display time series
head(timeSeries3)

# Create 2-dimensional faceted grid (horzontal)
xyplot(
    x = Box.Office ~ Year | Rating * Awards,
    data = timeSeries3,
    type = "l",
    main = "Box Office Revenue by Year, Rating, and Award Status",
    xlab = "Year",
    ylab = "Box Office Revenue ($M)")

# Create 2-dimensional faceted grid (vertical)
xyplot(
    x = Box.Office ~ Year | Awards * Rating,
    data = timeSeries3, 
    type = "l",
    main = "Box Office Revenue by Year, Award Status, and Rating",
    xlab = "Year",
    ylab = "Box Office Revenue ($M)")


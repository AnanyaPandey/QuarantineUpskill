# One categorical and two numeric variables

# Create a subset of movies
movies2014 <- movies[movies$Year == 2014, ]

# Load color brewer
library(RColorBrewer)

# Display all color palettes
display.brewer.all()

# Create a color palette
colors <- brewer.pal(4, "Set1")

# Create a color-coded scatterplot
plot(
    x = movies2014$Critic.Score, 
    y = movies2014$Box.Office, 
    col = colors[as.integer(movies2014$Rating)], 
    pch = 19,
    main = "Critic Score vs. Box Office Revenue by Rating",
    xlab = "Critic Score (%)",
    ylab = "Box Office Revenue ($M)")

# Add a legend
legend(
    x = "topleft", 
    legend = levels(movies2014$Rating), 
    col = colors[1:4], 
    pch = 19)

# Create a shape palette
shapes <- c(1, 4, 2, 0)

# Create a shape-coded scatterplot
plot(
    x = movies2014$Critic.Score, 
    y = movies2014$Box.Office, 
    pch = shapes[as.integer(movies2014$Rating)],
    main = "Critic Score vs. Box Office Revenue by Rating",
    xlab = "Critic Score (%)",
    ylab = "Box Office Revenue ($M)")

# Add a legend
legend(
    x = "topleft", 
    as.character(levels(movies2014$Rating)), 
    pch = shapes[1:4], 
    cex = 1)

# Create a tables filtered by rating
gMovies <- movies2014[movies2014$Rating == "G", ]

pgMovies <- movies2014[movies2014$Rating == "PG", ]

pg13Movies <- movies2014[movies2014$Rating == "PG-13", ]

rMovies <- movies2014[movies2014$Rating == "R", ]

# Create a faceted scatterplot
par(mfrow = c(2, 2))

plot(
    x = gMovies$Critic.Score,
    y = gMovies$Box.Office,
    main = "G",
    xlab = "",
    ylab = "Box Office Revenue ($M)")

plot(
    x = pgMovies$Critic.Score,
    y = pgMovies$Box.Office,
    main = "PG",
    xlab = "",
    ylab = "")

plot(
    x = pg13Movies$Critic.Score,
    y = pg13Movies$Box.Office,
    main = "PG-13",
    xlab = "Critic Score (%)",
    ylab = "Box Office Revenue ($M)")

plot(
    x = rMovies$Critic.Score,
    y = rMovies$Box.Office,
    main = "R",
    xlab = "Critic Score (%)",
    ylab = "")

# Reset plot window
par(mfrow = c(1, 1))

# Load time series (column-based)
timeSeries <- read.csv("TimeSeries.csv")

# Display time series
head(timeSeries)

# Create a multi-series line chart
plot(
    x = 0,
    y = 0,
    xlim = c(2000, 2015),
    ylim = c(0, max(timeSeries$G)),
    type = "l",
    main = "Box Office Revenue over Time by Rating Category",
    xlab = "Year",
    ylab = "Box Office Revenue ($M)")

lines(
    x = timeSeries$Year,
    y = timeSeries$G,
    col = colors[1])

lines(
    x = timeSeries$Year,
    y = timeSeries$PG,
    col = colors[2])

lines(
    x = timeSeries$Year,
    y = timeSeries$PG-13,
    col = colors[3])

lines(
    x = timeSeries$Year,
    y = timeSeries$R,
    col = colors[4])

legend(
    x = "topleft",
    legend = c("G", "PG", "PG-13", "R"),
    col = colors,
    pch = 15)

# Stacked area charts are a bit difficult

# Create a faceted line chart
par(mfrow = c(2, 2))

plot(
    x = timeSeries[ , c(1,2)],
    type = "l",
    ylim = c(0, max(timeSeries$G)),
    main = "G",
    xlab = "",
    ylab = "Box Office Revenue ($M)")

plot(
    x = timeSeries[ , c(1,3)],
    type = "l",
    ylim = c(0, max(timeSeries$G)),
    main = "PG",
    xlab = "",
    ylab = "")

plot(
    x = timeSeries[ , c(1,4)],
    type = "l",
    ylim = c(0, max(timeSeries$G)),
    main = "PG-13",
    xlab = "Year",
    ylab = "Box Office Revenue ($M)")

plot(
    x = timeSeries[ , c(1,5)],
    type = "l",
    ylim = c(0, max(timeSeries$G)),
    main = "G",
    xlab = "Year",
    ylab = "")

# Reset plot window
par(mfrow = c(1, 1))

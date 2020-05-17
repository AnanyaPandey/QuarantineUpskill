# One categorical and two numeric variables

# Create a color-coded scatterplot
xyplot(
    x = Box.Office ~ Critic.Score,
    data = movies2014,
    group = Rating,
    par.settings = list(
        superpose.symbol = list(
            col = colors)),
    auto.key = list(columns = 4),
    main = "Critic Score vs. Box Office Revenue by Rating",
    xlab = "Critic Score (%)",
    ylab = "Box Office Revenue ($M)")

# Create a shape-coded scatterplot
xyplot(
    x = Box.Office ~ Critic.Score,
    data = movies2014,
    key = list(
        text = list(
            levels(movies2014$Rating)), 
        points = list(
            pch = shapes),
        columns = 4), 
    pch = shapes[as.integer(movies2014$Rating)],
    main = "Critic Score vs. Box Office Revenue by Rating",
    xlab = "Critic Score (%)",
    ylab = "Box Office Revenue ($M)")

# Create a faceted scatterplot
xyplot(
    x = Box.Office ~ Critic.Score | Rating,
    data = movies2014,
    main = "Critic Score vs. Box Office Revenue by Rating",
    xlab = "Critic Score (%)",
    ylab = "Box Office Revenue ($M)")

# Create a time series (row-based)
timeSeries2 <- movies %>%
    select(Year, Rating, Box.Office) %>%
    group_by(Year, Rating) %>%
    summarize(Box.Office = mean(Box.Office)) %>%
    as.data.frame()

# Display time series
head(timeSeries2)

# Create a multi-series line chart
xyplot(
    x = Box.Office ~ Year,
    data = timeSeries2,
    group = Rating,
    type = "l",
    auto.key = list(columns = 4),
    main = "Box Office Revenue over Time by Rating Category",
    xlab = "Year",
    ylab = "Box Office Revenue ($M)")

# Stacked area charts are difficult

# Create a faceted line chart
xyplot(
    x = Box.Office ~ Year | Rating,
    data = timeSeries2,
    type = "l",
    layout = c(2, 2),
    main = "Box Office Revenue over Time by Rating Category",
    xlab = "Year",
    ylab = "Box Office Revenue ($M)")

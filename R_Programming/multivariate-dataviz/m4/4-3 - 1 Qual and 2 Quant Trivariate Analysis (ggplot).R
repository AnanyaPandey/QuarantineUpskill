# One categorical and two numeric variables

# Create a color-coded scatterplot
ggplot(
    data = movies2014, 
    aes(
        x = Critic.Score,
        y = Box.Office,
        color = Rating)) +
    scale_color_manual(
        name = "Rating",
        labels = levels(movies2014$Rating),
        values = colors) +
    geom_point() +
    ggtitle("Critic Score vs. Box Office Revenue by Rating") +
    xlab("Critic Score (%)") +
    ylab("Box Office Revenue ($M)")

# Create a shape-coded scatterplot
ggplot(
    data = movies2014, 
    aes(
        x = Critic.Score, 
        y = Box.Office,
        shape = Rating)) +
    scale_shape_manual(
        name = "Rating",
        labels = levels(movies2014$Rating),
        values = shapes) +
    geom_point() +
    ggtitle("Critic Score vs. Box Office Revenue by Award Status") +
    xlab("Critic Score (%)") +
    ylab("Box Office Revenue ($M)")

# Create a faceted scatterplot
ggplot(
    data = movies2014, 
    aes(
        x = Critic.Score, 
        y = Box.Office)) +
    geom_point() + 
    facet_wrap(
        facets = ~Rating) +
    ggtitle("Critic Score vs. Box Office Revenue by Award Status") +
    xlab("Critic Score (%)") +
    ylab("Box Office Revenue ($M)")

# Create a multi-series line chart
ggplot(
    data = timeSeries2, 
    aes(
        x = Year, 
        y = Box.Office, 
        color = Rating)) +
    geom_line() +
    ggtitle("Box Office Revenue over Time by Rating Category") +
    xlab("Year") +
    ylab("Box Office Revenue ($M)")

# Create a stacked area chart
ggplot(
    data = timeSeries2, 
    aes(
        x = Year, 
        y = Box.Office, 
        fill = Rating)) +
    geom_area() +
    ggtitle("Box Office Revenue over Time by Rating Category") +
    xlab("Year") +
    ylab("Box Office Revenue ($M)")

# Create a faceted line chart
ggplot(
    data = timeSeries2, 
    aes(
        x = Year, 
        y = Box.Office)) +
    geom_line() +
    facet_wrap(
        facets = ~Rating) +
    ggtitle("Box Office Revenue over Time by Rating Category") +
    xlab("Year") +
    ylab("Box Office Revenue ($M)")

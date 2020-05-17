# Two categorical and one numeric variable

# Create row-wise table
table2 <- movies %>%
    select(Rating, Awards, Box.Office) %>%
    group_by(Rating, Awards) %>%
    summarize(Box.Office = mean(Box.Office))

# Display table2
head(table2)

# Create grouped bar chart
barchart(
    x = Box.Office ~ Rating,
    data = table2,
    groups = Awards,
    main = "Average Box Office Revenue by Rating and Award Status",
    xlab = "Rating",
    ylab = "Box Office Revenue ($M)",
    auto.key = TRUE)

# Create stacked bar chart
barchart(
    x = Box.Office ~ Rating,
    data = table2,
    groups = Awards,
    stack = TRUE,
    main = "Average Box Office Revenue by Rating and Award Status",
    xlab = "Rating",
    ylab = "Box Office Revenue ($M)",
    auto.key = TRUE)

# Create faceted bar charts
barchart(
    x = Box.Office ~ Rating | Awards,
    data = table2,
    layout = c(2, 1),
    main = "Average Box Office Revenue by Rating and Award Status",
    xlab = "Rating",
    ylab = "Box Office Revenue ($M)")

# Create a heat map
levelplot(
    x = Box.Office ~ Rating * Awards,
    data = table2,
    main = "Average Box Office Revenue by Rating and Award Status",
    xlab = "Rating",
    ylab = "Award Status")

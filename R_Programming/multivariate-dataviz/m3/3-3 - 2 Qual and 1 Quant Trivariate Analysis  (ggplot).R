# Two categorical and one numeric variable

# Create grouped bar chart
ggplot(
    data = movies, 
    aes(
        x = Rating, 
        y = Box.Office, 
        fill = Awards)) +
    geom_bar(
        stat = "summary", 
        fun.y = "mean",
        position = "dodge") +
    ggtitle("Average Box Office Revenue by Rating and Award Status") +
    xlab("Rating") +
    ylab("Box Office Revenue ($M)")

# Create stacked bar chart
ggplot(
    data = movies, 
    aes(
        x = Rating, 
        y = Box.Office, 
        fill = Awards)) +
    geom_bar(
        stat = "summary", 
        fun.y = "mean",
        position ="stack") +
    ggtitle("Average Box Office Revenue by Rating and Award Status") +
    xlab("Rating") +
    ylab("Box Office Revenue ($M)")
    
# Create faceted bar chart
ggplot(
    data = movies, 
    aes(
        x = Rating, 
        y = Box.Office)) +
    geom_bar(
        stat = "summary", 
        fun.y = "mean") +
    facet_wrap(
        facets = ~Awards) +
    ggtitle("Average Box Office Revenue by Rating and Award Status") +
    xlab("Rating") +
    ylab("Box Office Revenue ($M)")

# Create a heat map
ggplot(
    data = table2, 
    aes(
        x = Rating, 
        y = Awards, 
        fill = Box.Office)) +
    geom_tile(
        stat = "identity") + 
    ggtitle("Average Box Office Revenue by Rating and Award Status") +
    xlab("Rating") +
    ylab("Awards") +
    labs(fill = "Box Office\nRevenue ($M)")


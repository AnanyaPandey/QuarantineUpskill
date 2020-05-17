# Three categorical variables

# Create a faceted grouped frequency bar chart
ggplot(
    data = movies, 
    aes(
        x = Rating, 
        fill = Awards)) +
    geom_bar(
        position = "dodge") +
    facet_wrap(
        facets = ~Distribution) + 
    ggtitle("Count of Movies by Rating, Awards, and Distribution") +
    xlab("Rating") +
    ylab("Count of Movies")

# Create a faceted stacked frequency bar chart
ggplot(
    data = movies, 
    aes(
        x = Rating, 
        fill = Awards)) +
    geom_bar() +
    facet_wrap(
        facets = ~Distribution) + 
    ggtitle("Count of Movies by Rating, Awards, and Distribution") +
    xlab("Rating") +
    ylab("Count of Movies")

# Create a 2D faceted frequency bar chart
ggplot(
    data = movies, 
    aes(
        x = Rating)) +
    geom_bar() +
    facet_grid(
        facets = Awards ~ Distribution) + 
    ggtitle("Count of Movies by Rating, Awards, and Distribution") +
    xlab("Rating") +
    ylab("Count of Movies")
    
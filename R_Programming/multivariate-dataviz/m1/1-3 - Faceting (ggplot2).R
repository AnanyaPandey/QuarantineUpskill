# Load ggplot2 package
library("ggplot2")

# Create horizontal facets
ggplot(
    data = timeSeries2, 
    aes(
        x = Year, 
        y = Box.Office)) +
    geom_line() + 
    facet_grid(
        facets = .~Rating) +
    ggtitle("Box Office Revenue by Year and Rating") +
    xlab("Year") +
    ylab("Box Office Revenue ($M)")

# Create vertical facets
ggplot(
    data = timeSeries2, 
    aes(
        x = Year, 
        y = Box.Office)) +
    geom_line() + 
    facet_grid(
        facets = Rating~.) +
    ggtitle("Box Office Revenue by Year and Rating") +
    xlab("Year") +
    ylab("Box Office Revenue ($M)")

# Create wrapped facets
ggplot(
    data = timeSeries2, 
    aes(
        x = Year, 
        y = Box.Office)) +
    geom_line() +  
    facet_wrap(
        facets = ~Rating) +
    ggtitle("Box Office Revenue by Year and Rating") +
    xlab("Year") +
    ylab("Box Office Revenue ($M)")

# Create two-dimensional facets (horizontal)
ggplot(
    data = timeSeries3, 
    aes(
        x = Year, 
        y = Box.Office)) +
    geom_line() + 
    facet_grid(
        facets = Awards~Rating) +
    ggtitle("Box Office Revenue by Year and Rating") +
    xlab("Year") +
    ylab("Box Office Revenue ($M)")

# Create two-dimensional facets (vertical)
ggplot(
    data = timeSeries3, 
    aes(
        x = Year, 
        y = Box.Office)) +
    geom_line() + 
    facet_grid(
        facets = Rating~Awards) +
    ggtitle("Box Office Revenue by Year and Rating") +
    xlab("Year") +
    ylab("Box Office Revenue ($M)")

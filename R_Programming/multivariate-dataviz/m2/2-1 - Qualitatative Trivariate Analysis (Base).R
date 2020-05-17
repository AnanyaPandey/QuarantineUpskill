# Set working directory
setwd("C:/Pluralsight")

# Load CSV data
movies <- read.csv("Movies.csv")

# Peek at the data
head(movies)

# Three categorical variables

# Create a function to create contingency tables
getTable <- function(distribution)
{
    filter <- movies$Distribution == distribution
    
    subset <- movies[filter, ]
    
    table(
        x = subset$Awards,
        y = subset$Rating)
}

# Display contingency tables
getTable("Domestic")
getTable("International")

# Set facets to two side-by-side panes
par(mfrow = c(1, 2))

# Create a faceted grouped frequency bar chart
barplot(
    height = getTable("Domestic"),
    beside = TRUE,
    ylim = c(0, 600),
    main = "Domestic",
    xlab = "Rating",
    ylab = "Count of Movies")

barplot(
    height = getTable("International"),
    beside = TRUE,
    ylim = c(0, 600),
    main = "International",
    xlab = "Rating",
    legend = rownames(getTable("International")))

# Create a faceted stacked frequency bar chart
barplot(
    height = getTable("Domestic"),
    ylim = c(0, 1000),
    main = "Domestic",
    xlab = "Rating",
    ylab = "Count of Movies")

barplot(
    height = getTable("International"),
    ylim = c(0, 1000),
    main = "International",
    xlab = "Rating",
    legend = rownames(getTable("International")))

# Create a function to create frequency table
getTable2 <- function(awards, distribution)
{
    filter <- movies$Awards == awards &
        movies$Distribution == distribution
    
    subset <- movies[filter, ]
    
    table(subset$Rating)
}

# Print frequency tables 
getTable2("No Awards", "Domestic")
getTable2("Won Awards", "Domestic")
getTable2("No Awards", "International")
getTable2("Won Awards", "International")

# Set facets to 2x2 grid
par(mfrow = c(2, 2))

# Create a 2D faceted frequency bar chart
barplot(
    height = getTable2("No Awards", "Domestic"),
    ylim = c(0, 600),
    main = "No Awards / Domestic",
    ylab = "Count of Movies")

barplot(
    height = getTable2("Won Awards", "Domestic"),
    ylim = c(0, 600),
    main = "Won Awards / Domestic")

barplot(
    height = getTable2("No Awards", "International"),
    ylim = c(0, 600),
    main = "No Awards / International",
    xlab = "Rating",
    ylab = "Count of Movies")

barplot(
    height = getTable2("Won Awards", "International"),
    ylim = c(0, 600),
    main = "Won Awards / International",
    xlab = "Rating")

# Reset facets to single pane
par(mfrow = c(1, 1))

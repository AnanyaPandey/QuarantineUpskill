# Visualizing Many Variables

# Create a correlogram
levelplot(
    x = correlations,
    at = seq(-1, 1, 0.1))

# Create a scatterplot matrix
splom(movies[, c(2:6)])

# Create parallel coordinates plot
parallelplot(
    x = top100[, c(2, 4, 5, 6)],
    horizontal.axis = FALSE)


# Visualizing Many Variables

# Load reshape2 library
library(reshape2)

# Melt correlation matrix
melted <- melt(correlations)

# Compare original to melted correlations
round(correlations, 2)

head(melted)

# Create correlogram
ggplot(
    data = melted,
    aes(
        x = Var1,
        y = Var2,
        fill = value)) + 
    geom_tile() + 
    scale_fill_gradient2(
        low = "red", 
        mid = "white",
        high = "blue", 
        limit = c(-1, 1),
        midpoint = 0)

# Load the GGally library
library(GGally)

# Create a scatterplot matrix
ggpairs(
    data = movies, 
    columns = c(2:6))

# Create parallel coordinates plot
ggparcoord(top100[, c(2, 4, 5, 6)])

# Three numerical variables

# Create gradient color palette
gradient <- brewer.pal(5, "YlOrRd")

# Create gradient color-scale scatterplot
palette(gradient)

plot(
    x = movies2014$Runtime, 
    y = movies2014$Critic.Score, 
    col = cut(movies2014$Box.Office, 5),
    pch = 16,
    main = "Critic Score vs. Box Office Revenue vs. Runtime",
    xlab = "Runtime (min)",
    ylab = "Critic Score (%)")

legend(
    x = "bottomleft", 
    title = "Box Office ($M)",
    legend = levels(cut(movies2014$Box.Office, 5)),
    col = 1:5, 
    pch = 16, 
    cex = 0.75)

# Create divergent color palette
divergent <- rev(brewer.pal(5, "RdBu"))

# Create divergent color-scale scatterplot
palette(divergent)

plot(
    x = movies2014$Runtime, 
    y = movies2014$Critic.Score, 
    col = cut(movies2014$Box.Office, 5),
    pch = 16,
    main = "Runtime, Critic Score, and Box Office Revenue",
    xlab = "Runtime (min)",
    ylab = "Critic Score (%)")

legend(
    x = "bottomleft", 
    title = "Box Office ($M)",
    as.character(levels(cut(movies2014$Box.Office, 5))),
    col = 1:5, 
    pch = 16, 
    cex = 0.75)

# Reset the color palette
palette("default")

# Create a size-by-area function
getSize <- function(values, scale)
{
    ratio <- values / max(values)
    
    size <- sqrt(ratio / pi)
    
    size * scale
}

# Create bubble charts
plot(
    x = movies2014$Runtime, 
    y = movies2014$Critic.Score,
    cex = getSize(movies2014$Box.Office, 5),
    main = "Runtime, Critic Score, and Box Office Revenue",
    xlab = "Runtime (min)",
    ylab = "Critic Score (%)")

# Install Scatterplot3d package
install.packages("scatterplot3d")

# Load Scatterplot3d package
library(scatterplot3d)

# Create a 3D scatterplot
scatterplot3d(
  x = movies2014$Runtime, 
  y = movies2014$Critic.Score,
  z = movies2014$Box.Office,
  main = "Runtime, Critic Score, and Box Office Revenue",
  xlab = "Runtime (min)",
  ylab = "Critic Score (%)",
  zlab = "Box Office Revenue ($M)",
  highlight.3d = TRUE)

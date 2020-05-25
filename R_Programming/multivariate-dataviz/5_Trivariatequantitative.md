## Data visualization
### Three Numeric Variable 
Quantiatative Trivariate analysis. Most common is comparing the three numeric variables. One obs per row for the data. i.e. 1 Record per observation. 

* Gradient coloured plot 
* Continour color pallete will be used
* Sewuential may be used for the extreme values (two color gradient)
* Diveregent coloir scale : 3 colour scales 

##### Type of chart 
* Bubble CHart
* Scatter Plot
* Area v/s Diameter
* D Scatterplot

### Base Graphics 
Creating the color palette
```R
gradient <- brewer.pal(5,"YlOrRd")
```
Creating a Gradient color palette and creating a scatterplot to demonstrate it.

```R
# Create the pallette 
palette(gradient)

# Here we are billing the box office revenue into 5 parts
plot(
  x = movies2014$Runtime,
  y = movies2014$Critic.Score,
  col = cut(movies2014$Box.Office,5),
  pch = 16,
  main = "Plotting movie runtime and Critic Score",
  xlab = "Length",
  ylab = "Critic Score"
)
legend(
  x = "left",
  title = "Box Office",
  legend  = levels(cut(movies2014$Box.Office,5)),
  col = 1:5,
  pch = 16,
  cex = 0.75 # Shrink text to 0.75%
)

```

Now Creating a divergent colour pallette and Plot it on Scatterplot

```R
divergent <- rev(brewer.pal(5,"RdBu"))

#Creating a divergent color scale plot 
# Change the current pallete to divergent (we just created)
palette(divergent)
plot(
  x = movies2014$Runtime,
  y = movies2014$Critic.Score,
  col = cut(movies2014$Box.Office,5),
  pch = 16,
  main = "Plotting movie runtime and Critic Score",
  xlab = "Length",
  ylab = "Critic Score"
)
legend(
  x = "left",
  title = "Box Office",
  legend  = levels(cut(movies2014$Box.Office,5)),
  col = 1:5,
  pch = 16,
  cex = 0.75 # Shrink text to 0.75%
)

#Resetting the cor pallete to default
palette("default")
```

Creating Bubble Chart, In order to create bubble chart
We need a function which returns the size as per value because it will change

```R
getsize <- function(values, scale) {
  ratio <- values / max(values)
  size <- sqrt(ratio / pi)
  size*scale
}

plot(
  x = movies2014$Runtime,
  y = movies2014$Critic.Score,
  cex = getsize(movies2014$Box.Office,5),
  main = "Plotting movie runtime and Critic Score",
  xlab = "Length",
  ylab = "Critic Score"
)
```
Here we can introduce 1 more categorical value and colour each circle according to the category 
legend here does not make great sense because it can have many shapes and those represent numeric values

```R
install.packages("scatterplot3d")
library(scatterplot3d)
scatterplot3d(
  x = movies2014$Runtime,
  y = movies2014$Critic.Score,
  z = movies2014$Box.Office,
  main = "Movie runtime wrt Critic Score and Revenue",
  xlab = "Runtime",
  ylab = "Critic Score",
  zlab = "Revenue",
  highlight.3d = TRUE
)
```

### GGPLOT

```R
library(RColorBrewer)
gradient <- brewer.pal(9,"YlOrRd")
palette(gradient)
library(ggplot2)

# Creatin
g Scatterplot with Gradient colour scale 
ggplot(data = movies2014, aes(x = Runtime, y = Critic.Score, color=Box.Office)) + 
  geom_point() + 
  scale_color_gradient(low = gradient[1], high = gradient[9]) + 
  ggtitle("runtime, Critic Score and Box office Revenue") +
  xlab("Runtime") +
  ylab("Critic Score") +
  labs(color = "Box Office Revenue") +
  ggsave("Scatter.png", device = "png")
```
Creating a divergent color scale graph

```R
# First Creating the divergent scale 
divergent <- brewer.pal(9,"PiYG")

# Creating the scatterplot with the scale
ggplot(data = movies2014, aes(x = Runtime, y = Critic.Score, color=Box.Office)) + 
  geom_point() + 
  scale_color_gradientn(colors = divergent) +
  ggtitle("runtime, Critic Score and Box office Revenue") +
  xlab("Runtime") +
  ylab("Critic Score") +
  labs(color = "Box Office Revenue") +
  ggsave("Scatter_divergent.png", device = "png")
```
Creating a Bubble Chart in GGPLOT

```R
ggplot(data = movies2014, aes(x = Runtime, y = Critic.Score, size = Box.Office))  +
  geom_point() + 
  scale_size_area() +
  ggtitle("runtime, Critic Score and Box office Revenue") +
  xlab("Runtime") +
  ylab("Critic Score") +
  labs(size = "Box Office\nRevenue") +
  ggsave("Size-wiseScatter.png", device = "png")
```
3D Scatterplot doesnt exist in GGplot, Hence we limit the graphs here. 

- [x] This is a complete item
- [ ] This is an incomplete item


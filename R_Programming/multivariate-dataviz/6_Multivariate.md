### Multivariate graphs
When the data has multiple numeric rows we can compare each and plot pairwise columns to check the relation between each numeric features.

### Base Graphics

```R
# Preparing the data
setwd("/Users/ananyapa/Gdrive/LEARNING/R_Programming/multivariate-dataviz")
movies <- read.csv("m2/Movies.csv")
movies2014 <- movies[movies$Year == 2014,]
```

Correlation Matrix : Correlation of all columns in the data pairwise

```R
#Creating a correlation matrix
corrs <- cor(movies[,c(2,4,5,6)]) # correlation of numeric variables

# round the decimals to 2 places
round(corrs,2)

# installing and loading corrgram package
install.packages("corrgram")
library(corrgram)

# Creating the corrgram plot
corrgram(movies) # automatically only takes numeric data omitting others
png(file = "corrgram.png", height = 400, width = 400)
dev.off()
```

Creating the matrix of Scatterplot consisting of all numeric columns, pairwise

```R
# Creating the scatterplot matrix
plot(movies[,c(2,3,4,5,6)], main = "Scatterplot Matrix")
png("Scatterplot-matrix.png")
```

Parallel coordinate plot : To create the plot we will take the 100 data from movies database

```R
top100 <- movies[1:100,]
top100

library(MASS)

# Parellel Coordinate Plot
parcoord(top100[,c(2,4,5,6)] )
```

### GGplot2 Graphics

Creating the graphs for multivariable data in ggplot2

```R
library(ggplot2)
library(reshape2)
corrs <- cor(movies[,c(2,4,5,6)])

#Melting the correlation matrix
melted <- melt(corrs) # melt converts the table into row wise data 

#comparing correlation and the melted data
round(corrs,2)
head(melted)

# Creating the plot now
ggplot(data = melted,
       aes(x = Var1, y = Var2, fill = value)) +
  geom_tile() +
  scale_fill_gradient2(low = "red", mid = "white", high = "blue",
                       limit = c(-1,1),
                       midpoint = 0)
ggsave("corrgram-ggplot.png",device="png")
```
Now Well create the scatterplot matrix  

```R
install.packages("GGally")
library(GGally)
#create Scatterplot
ggpairs(data = movies,
        columns = c(2:6))
```
Creating the parallel coordinate plot

```R
# Create parallel coordinate plot 
ggparcoord(top100, c(2,4,5,6))

```

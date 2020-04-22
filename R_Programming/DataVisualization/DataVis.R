df = data.frame(name=c('a','b','c'),value=c(2,5,7))
df

plot(df) # X and y AXIS lablled, Here we are passing Column
plot(df$name,df$value) # Not Lablled. Here we are passing vectors

# plot(XComponent,Ycomponent)

plot(x = df$name, y = df$value) # Here we are passing vectors

# one vector is string another is numeric
# therefore only one component is numeric

barplot(
  names = df$name,
  height = df$value,
  col = "skyblue",
  main = "PLotting heights",
  xlab = "Name",
  ylab = "Heights"
)

?plot  # More help on plotting BASE graphics system
?barplot

## Producing the same graph in Lattics. 
install.packages("lattice")
library(lattice)

dotplot(x=value ~ name, data = df)
# Lattice uses formula to understand what should be plotted. 
# This is read as value as a function of name or Y as a function of X
# Y = f(X)

barchart(x=value ~ name, data = df,
        main = "Hello Lattice",
        col="blue",
        xlab = "Name",
        ylab = "Height")
# Bars thin, Fonts Smaller, Border around chart 
?barchart

###################### GGPLOT2 ####################

install.packages("ggplot2",dependencies = TRUE)
library(ggplot2); # suppress the output 

ggplot(data = df,
       aes(x = name, y = value)) +
  geom_point() # it can be point line bar etc

## adding other attributes
## using + we can add and chain multiple visual elements / Layers

ggplot(data = df,
       aes(x = name, y = value)) +
  geom_bar(
    stat = "identity",
    fill = "skyblue") + 
  ggtitle("Plotting name height ggplot") + 
  xlab("Name") +
  ylab("Height")
# This one has broad bars, light grey background 

??ggplot2
?geom_bar

# Base is command oriented and detail oriented keep adding details to the plot
# Observations : ROWS
# VARIABLES / FEATURES : COLUMNS

# Qualitative - Categorical / Nominal 
# Quantitateive - Numeric / Measure : Discrete or Continous

# Qualitative : Univariate analysis
# Qualitative : numeric analysis

# Quantitative : univariate / bi variate / multivariate analysis 







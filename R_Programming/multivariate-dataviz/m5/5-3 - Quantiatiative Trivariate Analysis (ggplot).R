# Three numerical variables

# Create a gradient color-scale scatterplot
ggplot(
    data = movies2014, 
    aes(
        x = Runtime, 
        y = Critic.Score, 
        color = Box.Office)) +
    geom_point() + 
    scale_color_gradient(
        low = gradient[1], 
        high = gradient[5]) +
    ggtitle("Runtime, Critic Score, and Box Office Revenue") +
    xlab("Runtime (min)") +
    ylab("Critic Score (%)") +
    labs(color = "Box Office\nRevenue ($M)") 

# Create a divergent color-scale scatterplot
ggplot(
    data = movies2014, 
    aes(
        x = Runtime, 
        y = Critic.Score, 
        color = Box.Office)) +
    geom_point() + 
    scale_color_gradientn(
        colors = divergent) + 
    ggtitle("Runtime, Critic Score, and Box Office Revenue") +
    xlab("Runtime (min)") +
    ylab("Critic Score (%)") +
    labs(color = "Box Office\nRevenue ($M)") 

# Create a bubble chart
ggplot(
    data = movies2014, 
    aes(
        x = Runtime, 
        y = Critic.Score,
        size = Box.Office, 10)) +
    geom_point() +
    scale_size_area() +
    ggtitle("Runtime, Critic Score, and Box Office Revenue") +
    xlab("Runtime (min)") +
    ylab("Critic Score (%)") +
    labs(size = "Box Office\nRevenue ($M)") 

# NOTE: 3D scatterplots not available in ggplot2

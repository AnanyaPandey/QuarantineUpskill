# Three numerical variables

# Create a gradient color-scale scatterplot
xyplot(
    x = Critic.Score ~ Runtime,
    data = movies2014,
    col = gradient[cut(movies2014$Box.Office, 5)],
    pch = 16,
    main = "Runtime, Critic Score, and Box Office Revenue",
    xlab = "Runtime (min)",
    ylab = "Critic Score (%)",
    key = list(
        corner = c(0.05, 0.05),
        title = "Box Office ($M)",
        cex = 0.75,
        text = list(levels(cut(movies2014$Box.Office, 5))), 
        points = list(
            pch = 16, 
            col = gradient)))

# Create a divergent color-scale scatterplot
xyplot(
    x = Critic.Score ~ Runtime,
    data = movies2014,
    col = divergent[cut(movies2014$Box.Office, 5)],
    pch = 16,
    main = "Runtime, Critic Score, and Box Office Revenue",
    xlab = "Runtime (min)",
    ylab = "Critic Score (%)",
    key = list(
        corner = c(0.05, 0.05),
        title = "Box Office ($M)",
        cex = 0.75,
        text = list(levels(cut(movies2014$Box.Office, 5))), 
        points = list(
            pch = 16, 
            col = divergent)))

# Create bubble chart with lattice
xyplot(
    x = Critic.Score ~ Runtime,
    data = movies2014,
    cex = getSize(movies$Box.Office, 5),
    main = "Runtime, Critic Score, and Box Office Revenue",
    xlab = "Runtime (min)",
    ylab = "Critic Score (%)")

# Create 3D scatterplot
cloud(
    x = Box.Office ~ Critic.Score * Runtime,
    data = movies2014,
    type = c("p", "h"),
    pch = 16,
    main = "Runtime, Critic Score, and Box Office Revenue",
    xlab = "Runtime (min)",
    ylab = "Critic Score (%)",
    zlab = "Box Office\nRevenue\n($M)")

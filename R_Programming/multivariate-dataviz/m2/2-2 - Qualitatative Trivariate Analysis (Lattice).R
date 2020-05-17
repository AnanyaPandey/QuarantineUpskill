# Three categorical variables

# Create a three-way contingency table
table <- movies %>%
    select(Rating, Awards, Distribution) %>%
    group_by(Rating, Awards, Distribution) %>%
    summarize(Count = n())

# Display table
head(table)

# Create a faceted grouped frequency bar chart
barchart(
    x = Count ~ Rating | Distribution,
    data = table,
    groups = Awards,
    main = "Count of Movies by Rating, Awards, and Distribution",
    xlab = "Rating",
    ylab = "Count of Movies",
    auto.key = TRUE)

# Create a faceted stacked frequency bar chart
barchart(
    x = Count ~ Rating | Distribution,
    data = table,
    groups = Awards,
    stack = TRUE,
    main = "Count of Movies by Rating, Awards, and Distribution",
    xlab = "Rating",
    ylab = "Count of Movies",
    auto.key = TRUE)

# Create a 2D faceted frequency bar charts
barchart(
    x = Count ~ Rating | Awards * Distribution,
    data = table,
    main = "Count of Movies by Rating, Awards, and Distribution",
    xlab = "Rating",
    ylab = "Count of Movies")

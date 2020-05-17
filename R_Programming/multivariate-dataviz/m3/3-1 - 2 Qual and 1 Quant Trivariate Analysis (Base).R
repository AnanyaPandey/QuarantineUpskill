# Two categorical and one numeric variable

# Create a function to create table rows
getRow <- function(awards)
{
    subset <- movies[movies$Awards == awards, ]

    tapply(
        subset$Box.Office, 
        subset$Rating, 
        mean)
}

# Display result
getRow("No Awards")

# Combine the two rows to form a table
table <- rbind(
    getRow("No Awards"), 
    getRow("Won Awards"))

# Rename the rows
rownames(table) = c(
    "No Awards", 
    "Won Awards")

# Display the table
print(table)

# Create a grouped bar chart
barplot(
    height = table,
    beside = TRUE,
    main = "Average Box Office Revenue by Rating and Award Status",
    xlab = "Rating",
    ylab = "Box Office Revenue ($M)",
    legend = rownames(table))

# Create a stacked bar chart
barplot(
    height = table,
    main = "Average Box Office Revenue by Rating and Award Status",
    xlab = "Rating",
    ylab = "Box Office Revenue ($M)",
    legend = rownames(table))

# Create a faceted bar chart
par(mfrow = c(1, 2))

barplot(
    height = getRow("No Awards"),
    ylim = c(0, 100),
    main = "No Awards",
    xlab = "Rating",
    ylab = "Box Office Revenue ($M)")

barplot(
    height = getRow("Won Awards"),
    ylim = c(0, 100),
    main = "Won Awards",
    xlab = "Rating")

# Reset plot window
par(mfrow = c(1, 1))

# Create a heat map
heatmap(
    x = table,
    col = heat.colors(100),
    scale = "none",
    Colv = NA, 
    Rowv = NA,
    margins = c(6, 10),
    main = "Average Box Office Revenue",
    cexRow = 2)
 
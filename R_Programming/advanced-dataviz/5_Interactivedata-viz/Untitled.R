library(shiny)

ui <- fluidPage("Hello World")
server <- function(input,output) {}

shinyApp(
  ui = ui,
  server = server
)

### Creating a UI with I/O controls
ui <- fluidPage(
  titlePanel("Input and Output"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        inputId = "number",
        label = "Choose A Number",
        min = 0,
        max = 100,
        value = 25)),
    mainPanel(
      textOutput(
        outputId = "text")
    )
  )
)


#### Creating the server which maps input to output

server <- function(input,output) {
  output$text = renderText(
    {
      paste("You Selected : ",input$number)
    }
  )
}

#### Creating the ShinyApp
shinyApp(
  ui = ui,
  server = server
)

-----------

library(RColorBrewer)
library(dplyr)

setwd("/Users/ananyapa/Gdrive/Learning/R_Programming/advanced-dataviz/5_Interactivedata-viz")
movies <- read.csv("Movies.csv")
colors <- brewer.pal(4,"Set3")

#### Creating the User Interface Page 
ui <- fluidPage(
  titlePanel("Interactive Movies Data"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        inputId = "year",
        label = "Year",
        min = 2000,
        max = 2015,
        value = c(2000,2016),
        sep = ""),
      checkboxGroupInput(
        inputId = "rating",
        label = "Rating",
        choices = c("G","PG","PG-13","R"),
        selected = c("G","PG","PG-13","R")),
      textInput(
        inputId = "title",
        label = "Title")),
    mainPanel(
      plotOutput(
        outputId = "plot"
      )
    )
  )
)


#### Creating the Server 
server <- function(input,output) {
  output$plot = renderPlot(
    {subset <- movies %>% 
      filter(Year >= input$year[1]) %>%
      filter(Year <= input$year[2]) %>%
      filter(Rating %in% input$rating) %>%
      filter(grepl(input$title, Title)) %>%
      as.data.frame()
    plot(
      x = subset$Critic.Score,
      y = subset$Box.Office,
      col = colors[as.integer(subset$Rating)],
      pch = 19,
      cex = 1.5,
      xlim = c(0,100),
      ylim = c(0,800),
      xlab = "ritic Score",
      ylab = "Revenue")
    legend(
      x = "topleft",
      as.character(levels(movies$Rating)),
      col = colors[1:4],
      pch = 19,
      cex = 1.5)}
  )
}

shinyApp(
  ui = ui,
  server = server
)

library(shiny)

# creating UI
ui <- fluidPage("Hello World")

# Creating Server
server <- function(input,output) {}

# Creating the shiny app
shinyApp(
  ui = ui,
  server = server
)


ui <- fluidPage(
  titlePanel("Inout and output"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        inputId = "num",
        label = "Choose a number",
        min = 0,
        max = 100,
        value = 25)), 
    mainPanel(
      textOutput(
        outputId = "text"))))

server <- function(input,output) {
  output$text = renderText(
    {
      paste("You selected", input$num)
    })
}

shinyApp(
  ui = ui,
  server = server)


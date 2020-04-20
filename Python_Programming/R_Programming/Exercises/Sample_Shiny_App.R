ui <- fluidPage(
  titlePanel("Inout and output"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        inputId = "number",
        label = "Choose a number",
        min = 0,
        max = 200,
        value = 25)), 
    mainPanel(
      textOutput(
        outputId = "text"))))

server <- function(input,output) {
  output$text = renderText(
    {
      paste("You selected", input$number)
    })
}

shinyApp(
  ui = ui,
  server = server)



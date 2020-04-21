setwd("C:\Users\pandey\Google Drive\LEARNING\R_Programming\Exercises")

load("Tree.RData")
library(shiny)
library(RColorBrewer)
palette <- brewer.pal(3,"Set2")

ui <- fluidPage(
  titlePanel("Iris Classification"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        inputId = "petal.length",
        label = "Petal Length",
        min = 1,
        max = 7,
        value = 4),
      sliderInput(
        inputId = "petal.width",
        label = "Petal Width",
        min = 0.0,
        max = 2.5,
        step = 0.5,
        value = 1.5)),
  mainPanel(
      textOutput(outputId = "text"),
      plotOutput(outputId = "plot")
    )
      )
)  

server <- function(input,output){
  output$text = renderText({
    # Creating the predictors
    predictors <- data.frame(Petal.Length = input$petal.length, Petal.Width = input$petal.width,
                             Sepal.Length =0,
                             Sepal.Width =0)
    
    #Make Predictions 
    prediction <- predict(object=model,newdata=predictors,type="class")
    
    #Create Prediction Text
    paste("The predicted species is ", as.character(prediction))
  }
  )
  
  output$plot = renderPlot({
    # Creting the plot coloured by species
    plot(x = iris$Petal.Length, y = iris$Petal.Width, pch=19,
         col = palette[as.numeric(iris$Species)],
         main = "Plotting the prediction",
         xlab = "Length",
         ylab = "Width"
    )
    
    # Plotting decision Boundry
    # partition.tree(model, label="Species", add=TRUE)
    
    # Drawing the predictor on plot
    points(x = input$petal.length, y = input$petal.width, col="red", pch = 4, cex =2, lwd=4)
    
  }
  )
}

# Creating the Server
shinyApp(ui=ui, server=server)

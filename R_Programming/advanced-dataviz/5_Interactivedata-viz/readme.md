## Shiny
Shiny is an R package that makes it easy to build interactive web apps straight from R. You can host standalone apps on a webpage or embed them in R Markdown documents or build dashboards. You can also extend your Shiny apps with CSS themes, htmlwidgets, and JavaScript actions.

```r
library(shiny)

ui <- fluidPage("Hello World")
server <- function(input,output) {}

shinyApp(
  ui = ui,
  server = server
)
```

### User Interface
Shiny app has a user interface that interacts with the shiny server and creats interactive visualization. It has 3 main compoents and it also includes html tags which can be used just like any other web page. 
The Three main compoents are Title panel, Sidebar Panel and Main Panel. We can include multiple control widgetts into these panels which help us control / filter the data which is being represented or visualized in the main Panel.
Some basic and important type of widgets are : 

#### Input Functions 

| Function  |  Widget |
|-----------|---------|
| actionButton  | Action Button  |
| checkboxGroupInput | A group of check boxes  |
| checkboxInput  | A single check box  |
|  dateInput | A calendar to aid date selection |
| dateRangeInput  | A pair of calendars for selecting a date range  |
| fileInput  | A file upload control wizard  |
| helpText  | Help text that can be added to an input form  |
| numericInput  | A field to enter numbers  |
|  radioButtons | A set of radio buttons  |
|  selectInput | A box with choices to select from  |
| sliderInput  | A slider bar  |
| submitButton  | A submit button   |
| textInput     | A field to enter text  |

#### Output Functions 

| Output function | Creates |
|-----------------|---------|
|dataTableOutput | DataTable |
|htmlOutput | raw HTML |
|imageOutput | image |
|plotOutput | plot |
|tableOutput | table |
|textOutput | text |
|uiOutput | raw HTML |
|verbatimTextOutput | text |

#### Creating a UI with I/O controls

```r
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
```

### Server 
The server function plays a special role in the Shiny process; it builds a list-like object named output that contains all of the code needed to update the R objects in our app. Each R object needs to have its own entry in the list.

we can create an entry by defining a new element for output within the server function, like below. The element name should match the name of the reactive element that we created in the ui.

#### Creating the server which maps input to output

```r
server <- function(input,output) {
  output$text = renderText(
    {
      paste("You Selected : ",input$number)
    }
  )
}
````

#### Creating the ShinyApp

```r
shinyApp(
  ui = ui,
  server = server
)

```
Each entry to output should contain the output of one of Shiny’s render* functions. These functions capture an R expression and do some light pre-processing on the expression. Use the render* function that corrresponds to the type of reactive object you are making.


|Render function | Creates |
|----------------|---------|
|renderDataTable | DataTable |
|renderImage     | images (saved as a link to a source file) |
|renderPlot      | plots |
|renderPrint     | any printed output |
|renderTable     | data frame, matrix, other table like structures |
|renderText      | character strings |
|renderUI        | a Shiny tag object or HTML |

It is like every time we change the controls, the render works and changes whatever is posted inside the render Object.

----------

Here is an example of interactive data visualization where we are plotting the Movies data and comparing Critic score and Box office revenue of movies with user controls like slider input which decides the year of movie release, Checkboxes to select what rating of movies to include in the graph, and title to filter with particular name of movie to filter in the graph.

```r
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

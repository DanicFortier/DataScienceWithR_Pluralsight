# Deploying to Production

# Load shiny
library(shiny)

# Create a UI
ui = fluidPage("Hello World!")

# Create a server
server = function(input, output){}

# Create a shiny app
shinyApp(ui, server)

# Create a UI with I/O controls
ui = fluidPage(
  titlePanel("Input and Output"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        inputId = "num",
        label = "Choose a Number",
        min = 0,
        max = 100,
        value = 25)),
    mainPanel(
      textOutput(
        outputId = "text"))))

server = function(input, output){
  output$text <- renderText({paste("You selected: ", input$num)})
}






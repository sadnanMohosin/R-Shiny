library(shiny)
library(ggplot2)

data("mtcars")

colChoices = colnames(mtcars)

ui = fluidPage(
  selectizeInput(inputId = 'colSelector',label="Select a column:",choices=colChoices),
  plotOutput("p1")
)

server = function(input,output){
  output$p1 = renderPlot({
    ggplot(data = mtcars,aes_string(x='mpg',y=input$colSelector)) + geom_point()
  })
}

shinyApp(ui,server)
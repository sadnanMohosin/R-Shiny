

fluidPage(
  fluidRow(
    column(width=3,selectInput(inputId = "xSelector",label = "Select the x axis", choices = xAxisChoices )),
    column(width=3,selectInput(inputId = "ySelector",label = "Select the y axis", choices = yAxisChoices ))
    ),
  fluidRow(
    column(width=3,selectInput("cylSelector",label = "Select a cylinder",choices = cylinderChoices)),
    column(width=3,actionButton("refreshPlot",label = "Refresh"))
  
  ),
  
  fluidRow(
    plotOutput("p1")
  )
  


  
  
)


fluidPage(
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "xSelector",label = "Select the x axis", choices = xAxisChoices ),
      selectInput(inputId = "ySelector",label = "Select the y axis", choices = yAxisChoices ),
      selectInput("cylSelector",label = "Select a cylinder",choices = cylinderChoices),
      checkboxInput("showtitle",label= "Check to enter title",value= FALSE),
      conditionalPanel(condition = "input.showtitle==true",
                       textInput("title",label = "Enter a plot title",placeholder = "Title")),
      actionButton("refreshPlot",label = "Refresh")
      
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Plot",plotOutput("p1")),
        tabPanel("Data",dataTableOutput("d1"))
      
      
    )
  )


  
))
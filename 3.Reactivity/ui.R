fluidPage(
  
  selectInput(inputId = "month", label = "Select a month:", choices = unique(airquality$Month)),
  selectInput(inputId = "column", label = "Select a column to plot", choices = c("Wind", "Temp")),
  DTOutput(outputId = "datatable1"),
  plotOutput(outputId = "plot1")
  
)
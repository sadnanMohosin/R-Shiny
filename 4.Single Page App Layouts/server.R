function(input, output){
  
  data("airquality")
  
  filteredData <- reactive({
    
    filteredData <- airquality[airquality$Month == input$month,]
    
    return(filteredData)
    
  })
  
  output$datatable1 <- renderDT({
    
    datatable(filteredData())
    
  })
  
  output$plot1 <- renderPlot({
    
    ggplot(data = filteredData(), aes_string(x = "Day", y = input$column)) + geom_point() + geom_line()
    
  })
  
}
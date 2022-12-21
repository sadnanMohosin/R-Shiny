#library(ggplot2)
#library(DT)

function(input, output){
  
  
  filterData = reactive({
    filteredData = mtcars[mtcars$cyl == input$cylSelector,]
    
    return (filteredData)
  })
  
  
  plot1 = eventReactive(input$refreshPlot,{
    
    ggplot(data = filterData(), aes_string(x = input$xSelector, y = input$ySelector)) + geom_point()
    
  })
  
  output$p1 = renderPlot(plot1())
}
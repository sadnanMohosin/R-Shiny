#library(ggplot2)
#library(DT)

function(input, output){
  
  
  filterData = reactive({
    filteredData = mtcars[mtcars$cyl == input$cylSelector,]
    
    return (filteredData)
  })
  
 
  output$datatable1 = renderDT({
    datatable(filterData())
  })
  
  output$downloadData = 
    downloadHandler(
      filename = "FilteredData.csv",
      content = function(file){
        write.csv(filterData()[input[["datatable1_rows_all"]],],file)
      }
    )
}
  
#   plot1 = eventReactive(input$refreshPlot,{
#     
#     if(input$showtitle==TRUE){
#       ggplot(data = filterData(), aes_string(x = input$xSelector, y = input$ySelector)) + geom_point() +ggtitle(input$title)
#     } else {
#       ggplot(data = filterData(), aes_string(x = input$xSelector, y = input$ySelector)) + geom_point()
#     }
#     
#     
#     
#   })
#   
#   output$p1 = renderPlot(plot1())
#   output$d1 = renderDT({
#     datatable(filterData())
#   })
# }
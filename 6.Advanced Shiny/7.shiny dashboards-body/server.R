
function(input, output){
  messageData = data.frame(from=c("Ri","Ti","Pr"),
                           message = c("I will be with you soon","I am with another,now","I remember from the back"))

  output$messageMenu = renderMenu({
    msg = apply(messageData, 1, function(row){
      messageItem(from=row[['from']],message = row[["message"]])
    })
    
    dropdownMenu(type="messages", .list=msg)
  
  })
  
  dataFiltered = reactive({
    data = mtcars[mtcars$cyl==input$selcetCylinder,]
    return(data)
  })
  
  output$data1 = renderDT(datatable(dataFiltered()))
  output$plot1 = renderPlot({
    ggplot(data =  dataFiltered(),aes(x=mpg,y=hp))+ geom_point()
  })
}
  

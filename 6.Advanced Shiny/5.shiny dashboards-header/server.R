
function(input, output){
  messageData = data.frame(from=c("Ritu","Tifa","Prova"),
                           message = c("I will be with you soon","I am with another,now","I remember from the back"))
  output$messageMenu = renderMenu({
    msg = apply(messageData, 1, function(row){
      messageItem(from=row[['from']],message = row[["message"]])
    })
    
    dropdownMenu(type="messages", .list=msg)
  })
}
  

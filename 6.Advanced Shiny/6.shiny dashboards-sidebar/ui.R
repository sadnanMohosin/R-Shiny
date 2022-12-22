dashboardPage(
  dashboardHeader(title= "Dashboard Header",
                  dropdownMenu(type="messages",
                               messageItem(from ="Mike",message="This is a test message")
                               ),
                  dropdownMenuOutput(outputId = "messageMenu"),
                  dropdownMenu(type= "notifications",
                               notificationItem(text="This is a test notification")
                               ),
                  dropdownMenu(type = "tasks",
                               taskItem(text="This is a test task",value= 50)
                  )
),
dashboardSidebar(
  sidebarMenu(
    menuItem(text = "Data",tabName = "data",icon = icon("table")),
    menuItem(text = "Plots",tabName = "plots",icon = icon("chat-bar")),
    selectInput(inputId="selcetCylinder",label="Select a cylinder:",choices = cylinderChoices)
  )
),
dashboardBody()
)
fluidPage(
  textInput(inputId = "name", label = "Enter your name:", placeholder = "John Smith"),
  numericInput(inputId = "age", label = "Enter your age:", value = 30),
  dateInput(inputId = "birthday", label = "Select your birthday:"),
  selectInput(inputId = "gender", label = "Choose your gender:", choices = c("Male", "Female")),
  sliderInput(inputId = "favNumber", label = "Select your favorite number", min = 0, max = 100, step = 1, value = 50)
)

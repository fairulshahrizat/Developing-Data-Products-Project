library(shiny)

# Define server logic for slider examples
shinyServer(function(input, output) {
  output$inputValueWeight <- renderPrint({input$Weight})
  output$inputValueHeight <- renderPrint({input$Height/100})
  output$BMICalculation <- renderPrint({BMI(input$Weight,input$Height)})
  
  BMI <- function(Weight, Height) Weight / (Height/100)^2
  
})
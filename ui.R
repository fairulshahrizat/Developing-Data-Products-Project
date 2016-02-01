library(shiny)


ui<-pageWithSidebar(
  # Application title
  headerPanel("Calculate Your Body Mass Index (BMI)"), 
 
  sidebarPanel(
    numericInput('Weight', 'Bodyweight (kg)', 78, min = 40, max = 300, step = 1
    ),
    numericInput('Height', 'Height (cm)', 173, min = 80, max = 200, step = 1
    ),
    submitButton('Submit')
  ),
  mainPanel(
    p('Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.'),
    h3('BMI Calculator'),
    h4('Bodyweight (kg)'),
    verbatimTextOutput("inputValueWeight"),
    h4('Height (m)'),
    verbatimTextOutput("inputValueHeight"),
    h4('BMI Score (Formula : Weight / (Height*Height) ):'),
    verbatimTextOutput("BMICalculation"),
    br(),
    p("- Less than 16.0 - Severely Underweight"),
    p("- From 16.0 to 18.5 - Underweight"),
    p("- From 18.6 to 25.0 - Normal Weight"),
    p("- From 25.1 to 30.0 - Overweight"),
    p("- From 30.1 to 35.0 - Moderately Obese"),
    p("- More than 35.0 - Severely Obese"),
    br(),
    mainPanel(
      img(src="BMI-range-chart.jpg", height = 300, width = 600)
    )
  )
)

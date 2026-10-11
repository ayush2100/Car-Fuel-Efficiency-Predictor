library(shiny)

ui <- fluidPage(
  titlePanel("Car Fuel Efficiency Predictor"),

  sidebarLayout(
    sidebarPanel(
      h3("Choose Car Specifications"),

      sliderInput(
        "hp",
        "Horsepower:",
        min = 50,
        max = 350,
        value = 150
      ),

      sliderInput(
        "wt",
        "Weight (1000 lbs):",
        min = 1.5,
        max = 6,
        value = 3
      ),

      helpText("Adjust the sliders to estimate fuel efficiency."),
      helpText("This app uses the mtcars dataset and a linear regression model.")
    ),

    mainPanel(
      h3("Predicted Fuel Efficiency"),
      textOutput("prediction"),
      plotOutput("plot"),
      h4("How to use this app"),
      p("Move the horsepower and weight sliders to see how the predicted miles per gallon changes."),
      p("The model is educational and provides an estimate, not a guarantee of real-world mileage.")
    )
  )
)

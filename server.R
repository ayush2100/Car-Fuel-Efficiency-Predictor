
library(shiny)

data(mtcars)

model <- lm(mpg ~ hp + wt, data = mtcars)

server <- function(input, output) {

  predicted_mpg <- reactive({
    predict(
      model,
      newdata = data.frame(
        hp = input$hp,
        wt = input$wt
      )
    )
  })

  output$prediction <- renderText({
    paste(
      "Estimated MPG:",
      round(predicted_mpg(), 2)
    )
  })

  output$plot <- renderPlot({
    plot(
      mtcars$wt,
      mtcars$mpg,
      xlab = "Weight (1000 lbs)",
      ylab = "Miles per Gallon (MPG)",
      main = "Car Weight vs Fuel Efficiency",
      pch = 19
    )

    points(
      input$wt,
      predicted_mpg(),
      col = "red",
      pch = 19,
      cex = 2
    )

    legend(
      "topright",
      legend = "Predicted car",
      col = "red",
      pch = 19
    )
  })
}

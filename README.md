# Car Fuel Efficiency Predictor

## Project Overview
This project is an interactive Shiny application that predicts car fuel efficiency in miles per gallon (MPG) based on horsepower and vehicle weight.

## Features
- Interactive horsepower slider
- Interactive vehicle weight slider
- Real-time MPG prediction
- Scatter plot showing car weight versus fuel efficiency
- Instructions for using the application

## Dataset
The application uses R's built-in `mtcars` dataset.

## Prediction Method
A linear regression model uses horsepower (`hp`) and weight (`wt`) to predict miles per gallon (`mpg`).

## Technologies Used
- R
- Shiny
- Linear regression
- Posit Cloud
- shinyapps.io

## Live Application
[Click here to open the live Shiny app](https://ayush2100.shinyapps.io/car-fuel-efficiency-predictor/)

## How to Run
1. Install R and RStudio.
2. Install Shiny using `install.packages("shiny")`.
3. Place `ui.R` and `server.R` in the same folder.
4. Run `shiny::runApp()`.

## Limitations
The predictions are educational estimates based on the `mtcars` dataset and a simple linear regression model. Actual fuel efficiency may differ.


# UI for scatterplot
library(shiny)
mpg
# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
shinyUI(fluidPage(
  # A page header
titlePanel("MPG Dataset Exploration"),
  
  # Add a select input for the x variable
selectInput("x_variable", "X Variable", choices = colnames(mpg)),
  
  # Add a select input for the y variable
selectInput("y_variable", "Y Variable", choices = colnames(mpg)),

  # Add a sliderInput to set the size of each point
sliderInput("size_of_point", "Size of point", value = 0, min = 0, max = 10),

  # Add a selectInput that allows you to select a color from a list of choices
selectInput("color", "Color",
            choices = c("Blue", "Red", "Green")),

  # Plot the output with the name "scatter"
plotOutput("scatter")
)
)
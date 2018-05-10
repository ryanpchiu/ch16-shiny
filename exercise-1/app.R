# Exercise 1: Building a user interface

# Load the `shiny` package (install it in the R terminal if you haven't already)
#install.packages("shiny")
library(shiny)

# Define a new `ui` variable. This variable should be assigned a `fluidPage()` 
# layout, which should be passed the following:
ui <- fluidPage(

  # A top level header: "First Shiny Website"
  h1("First Shiny Website"),

  # A Paragraph, describing your excitement: include some `strong` text
  p("I am", strong("so EXCITED"), "."),

  # An image with this `src`
  # https://media2.giphy.com/media/l3q2Ip7FrmPE33EiI/giphy.gif
  
  img("you knew it", src = "https://media2.giphy.com/media/l3q2Ip7FrmPE33EiI/giphy.gif"),
  # Another paragraph about a slider: include some `em` text
  p("I'm actually", em("hella boring")),
  
  # A slider with an appropriate label, min of 10, max of 100, value of 50  
  sliderInput(
    "boredness",
    "index of boredness",
    min = 1,
    max = 10,
    value = 5
  )
)

# Define a `server` function that accepts an input and an output
# At this point, don't do anything in the function
# This function should perform the following:
server <- function(input, output){}


# Create a new `shinyApp()` using the above ui and server
shinyApp(ui = ui, server = server)
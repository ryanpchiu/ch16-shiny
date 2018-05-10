### Exercise 3 ###

library(shiny)
library(ggplot2)
# Create a shiny server that creates a scatterplot. 
shinyServer(function(input, output){
# It should take as an input the x_var, y_var, color, and size
# Save the result of `renderPlot` to output$scatter
output$scatter <- renderPlot({
  
  title <- paste0(input$x_variable, "vs", input$y_variable)
  x <- mpg[[input$x_variable]]
  y <- mpg[[input$y_variable]]
    # Store x and y values to plot
p <- ggplot(mpg) +
    geom_point(mapping = aes(x = x, y = y),
    size = input$size_of_point,
    color = input$color) +
    labs(x = input$x_variable, y = input$y_variable, title = title)
    p
})
    # Store the title of the graph in a variable
    
    # Create ggplot scatter
    
}
)


# Function to build a scatterplot

# Write a function that returns a scatterplot, parameterizing the following variables:
#   - Data to use
#   - Variable for the x axis
#   - Variable for the y axis
#   - Variable for the color
#   - Title of the plot (set a default of "Title")
#   - Label for the x axis (set a default of "X Title")
#   - Label for the y axis (set a default of "Y Title")

library(ggplot2)
BuildScatterPlot <- function(data, x.axis, y.axis, color, title="Title", x.label="X Title", y.label="Y Title") {
  plot <- ggplot(data = data) + geom_point(aes(x = x.axis, y = y.axis, color = color)) + ggtitle(title) + xlab(x.label) + ylab(y.label) 
  return(plot)
}
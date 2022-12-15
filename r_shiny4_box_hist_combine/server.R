#
#
#

library(shiny)
setwd("C:/Hogwarts/advanced_analytics/Datasets")
bos <- read.csv("Boston.csv")

library(ggplot2)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$hist <- renderPlot({
      df <- data.frame(col1=bos[, input$num_var])
      ggplot(data = df, saes(y=col1)+
        geom_histogram(bins= 20, color="orange", fill="black"))

        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white',
             xlab = 'Waiting time to next eruption (in mins)',
             main = 'Histogram of waiting times')

    })

})

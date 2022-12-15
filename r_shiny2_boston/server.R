#
# Boston Histogram
#


library(shiny)

setwd("C:/Hogwarts/advanced_analytics/Datasets")
bos = read.csv("Boston.csv")

library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$hist <- renderPlot({
        df <- data.frame(col1=bos[, input$num_var])
        ggplot(data = df, aes(x=col1))+
          geom_histogram(bins=20, color='pink', fill='black')+
          labs(x=input$num_var)
    })

})

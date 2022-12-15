library(shiny)
setwd("C:/Hogwarts/advanced_analytics/Datasets")
bos <- read.csv("Boston.csv")
library(ggplot2)
shinyServer(function(input, output) {
  output$scatter <- renderPlot({
    
    df<-bos[, c(input$num_x, input$num_y)]
    plot(df[,1], df[,2],xlab=input$num_x, ylab=input$num_y, col= "tomato")
 })
  
})

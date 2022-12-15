library(shiny)

setwd("C:/Hogwarts/advanced_analytics/Datasets")
bos = read.csv("Boston.csv")

library(ggplot2)

# Define server logic required to draw a boxplot
shinyServer(function(input, output) {
  
  output$boxplot <- renderPlot({
    df <- data.frame(col1=bos[, input$num_var])
    ggplot(data = df, aes(x=col1))+
      geom_box_plot(color='pink', fill='black')+
      labs(x=input$num_var)
  })
  
})
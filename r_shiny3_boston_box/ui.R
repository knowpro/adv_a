#
# Boxplot
#

library(shiny)

shinyUI(
  fluidPage(
    titlePanel("Boxplot"),
    
    sidebarLayout(
      sidebarPanel(
        selectInput(
          inputId = "num_var",
          label = "Select a variable",
          choices = list("crim", "zn",
                         "indus", "nox",
                         "chas")
        )
      ),
      
      mainPanel(
        plotOutput(outputId = "boxplot") 
      )
    )
  )
)
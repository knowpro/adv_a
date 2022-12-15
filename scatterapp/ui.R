library(shiny)
shinyUI(
  fluidPage(
    titlePanel("Scatterplot"),
    
    sidebarLayout(
      sidebarPanel(
        selectInput(
          inputId = "num_x",
          label = "Select a X variable",
          choices = list("crim", "zn","indus", "nox", "chas")
        ),
        selectInput(
          inputId = "num_y",
          label = "Select a Y variable",
          choices = list("crim", "zn","indus", "nox", "chas")
        )
      ),
      
      mainPanel(
        plotOutput(outputId = "scatter") 
      )
    )
  )
)
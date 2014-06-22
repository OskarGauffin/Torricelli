library(shiny)
library(shinyRGL)

shinyUI(pageWithSidebar(
  
  headerPanel("Torricellis trumpet"),
  
  sidebarPanel("Drag i grafen med muspekaren", width=10),
  
  mainPanel(
    webGLOutput("torri")
  )
))
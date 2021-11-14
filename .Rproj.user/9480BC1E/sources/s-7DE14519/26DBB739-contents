library(shiny)
library(shinyWidgets)

# Define UI for application that draws a histogram
shinyUI(bootstrapPage(
  tags$style(type = "text/css", "html, body {width:100%;height:100%}"),
  
  leafletOutput("map", width = "100%", height = "100%"),
  
  absolutePanel(top = 10, right = 10,
                pickerInput("genus", label = "Select a Genus:",
                            choices = list("All genus", 
                                           'Pectobacterium',
                                           'Dickeya',
                                           'Sodalis',
                                           'Lonsdalea',
                                           'Brenneria'),
                            options = list(
                              
                              `live-search` = TRUE)
                            )
                )
  ))



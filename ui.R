library(shiny)
library(shinyWidgets)
library(tidyverse)
library(leaflet)
library(echarts4r)
library(glue)
about <- '<h1>Map of location Pectobacteriaceae</h1>
<p>On the first page there is the map with locatin of finding bacterias from family <b>Pectobacteriaceae</b>. 
On the second page there is plot with event date of bacterias and number of finding in each year.
</p>
'

shinyUI(fluidPage(
  
  # App title ----
  titlePanel("Pectobacteriaceae"),
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    
    # Sidebar panel for inputs ----
    sidebarPanel(
      
      # Input: Select the random distribution type ----
      bootstrapPage(
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
      ),
        
    # Main panel for displaying outputs ----
    mainPanel(
      
      # Output: Tabset w/ plot, summary, and table ----
      tabsetPanel(type = "tabs",
                  tabPanel("Map", leafletOutput("map")),
                  tabPanel("Event", echarts4rOutput("plot")),
                  tabPanel("About", HTML(about))
                  )
      )
    )
    )
)
  


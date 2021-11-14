library(shiny)

shinyServer(function(input, output, session) {

  filteredData <- reactive({
    if (input$genus == "All genus") {
      all_genus
    } else {
      filter(all_genus, genus == input$genus)
    }
  })
  
  output$map <- renderLeaflet({
    leaflet(data = filteredData()) %>% 
      addTiles() %>%
      addProviderTiles("Stamen.TonerHybrid") %>% 
      addCircleMarkers(lng = ~decimalLongitude, 
                       lat = ~decimalLatitude,
                       popup = ~description_html,
                       clusterOptions = markerClusterOptions(),
                       color = ~pal(genus), opacity = 0.7, fillOpacity = 0.8, radius = 10)
  })
  
  observe({
    leafletProxy("map", data = filteredData()) %>%
      clearShapes() %>%
      addTiles() %>%
      addProviderTiles("Stamen.TonerHybrid") %>% 
      addCircleMarkers(lng = ~decimalLongitude, 
                       lat = ~decimalLatitude,
                       popup = ~description_html,
                       clusterOptions = markerClusterOptions(),
                       color = ~pal1(species), opacity = 0.7, fillOpacity = 0.8, radius = 10)
  })
})

?clearShapes
?leafletProxy

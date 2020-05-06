## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, include = FALSE---------------------------------------------------
# library(deckgl)

## ----create-deckgl-widget, eval = FALSE---------------------------------------
#  deckgl()

## ----basemap, eval = FALSE----------------------------------------------------
#  deckgl() %>%
#    add_basemap()

## ----add-layers, eval = FALSE-------------------------------------------------
#  # Grid layer example
#  data("sf_bike_parking")
#  
#  props <- list(
#    extruded = TRUE,
#    cellSize = 200,
#    elevationScale = 4,
#    getPosition = ~lng + lat,
#    tooltip = "Count: {{count}}"
#  )
#  
#  deckgl(zoom = 11, pitch = 45) %>%
#    add_basemap() %>%
#    add_grid_layer(
#      data = sf_bike_parking,
#      properties = props
#    )

## ----add-layers-generic-vs-shortcut, eval = FALSE-----------------------------
#  # Generic function
#  deckgl() %>%
#    add_layer("ArcLayer", id, data, properties)
#  
#  # Shortcut function
#  deckgl() %>%
#    add_arc_layer(id, data, properties)

## ----eval = FALSE-------------------------------------------------------------
#  data("bart_stations")
#  
#  deckgl() %>%
#    add_source("bart-stations", bart_stations) %>%
#    add_scatterplot_layer(
#      source = "bart-stations",
#      getPosition = ~lng + lat,
#      # ...
#    ) %>%
#    add_text_layer(
#      source = "bart-stations",
#      getPosition = ~lng + lat,
#      # ...
#    ) %>%
#    add_basemap()

## ----eval = FALSE-------------------------------------------------------------
#  # Corresponding R code
#  
#  # using named arguments
#  deck <- deckgl() %>%
#    add_grid_layer(
#      id = "grid-layer",
#      data = data,
#      extruded = TRUE,
#      cellSize = 200,
#      elevationScale = 4,
#      getPosition = ~lng + lat
#    )
#  
#  # ... using a named props list
#  props <- list(
#    cellSize = 200,
#    extruded = TRUE,
#    # ...
#  )
#  
#  deckgl() %>%
#    add_grid_layer(
#      data = data,
#      properties = props
#    )

## ----eval = FALSE-------------------------------------------------------------
#  data("bart_segments")
#  
#  props <- list(
#    getWidth = 12,
#    getSourcePosition = ~from_lng + from_lat,
#    getTargetPosition = ~to_lng + to_lat,
#    getSourceColor = "yellow",
#    getTargetColor = "orange",
#    tooltip = use_tooltip(
#      html = "{{from_name}} to {{to_name}}",
#      style = "background: steelBlue; border-radius: 5px;"
#    )
#  )
#  
#  deckgl(zoom = 9.5, pitch = 35) %>%
#    add_arc_layer(data = bart_segments, properties = props) %>%
#    add_basemap()

## ----run-examples, eval = FALSE-----------------------------------------------
#  example(add_grid_layer)

## ----eval = FALSE-------------------------------------------------------------
#  backend < -function(input, output) {
#    # ...
#    observeEvent(input$rdeck_onclick, {
#      info <- input$rdeck_onclick
#      print(info$object)
#    })
#  }


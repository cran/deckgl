## ----echo = FALSE-------------------------------------------------------------
example <- paste0(
  rprojroot::find_package_root_file(),
  "/inst/examples/deckgl-api-reference/screen-grid-layer.R"
)
do.call(knitr::read_chunk, list(path = example))

## ----screen-grid-layer, eval = FALSE------------------------------------------
#  sample_data <- paste0(
#    "https://raw.githubusercontent.com/uber-common/",
#    "deck.gl-data/master/",
#    "website/sf-bike-parking.json"
#  )
#  
#  color_to_rgb <- function(color) col2rgb(color) %>% as.vector()
#  color_range <- c("#0198BD", "#49E3CE", "#D8FEB5", "#FEEDB1", "#FEAD54", "#D1374E") %>%
#    lapply(color_to_rgb)
#  
#  properties <- list(
#    opacity = 0.8,
#    cellSizePixels = 50,
#    colorRange = color_range,
#    getPosition = ~COORDINATES,
#    getWeight = ~SPACES
#  )
#  
#  deck <- deckgl() %>%
#    add_screen_grid_layer(data = sample_data, properties = properties) %>%
#    add_mapbox_basemap()
#  
#  # Use a data object instead of the data url above
#  data("sf_bike_parking")
#  
#  deck <- deckgl() %>%
#    add_screen_grid_layer(
#      data = sf_bike_parking,
#      properties = properties,
#      # overwrite properties
#      getPosition = ~lng + lat,
#      getWeight = ~spaces
#    ) %>%
#    add_mapbox_basemap()
#  
#  if (interactive()) deck


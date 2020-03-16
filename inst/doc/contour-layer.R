## ----echo = FALSE-------------------------------------------------------------
example <- paste0(
  rprojroot::find_package_root_file(),
  "/inst/examples/deckgl-api-reference/contour-layer.R"
)
do.call(knitr::read_chunk, list(path = example))

## ----contour-layer, eval = FALSE----------------------------------------------
#  data("sf_bike_parking")
#  
#  contours <- list(
#    use_contour_definition(
#      threshold = 1,
#      color = c(255, 0, 0),
#      strokeWidth = 2
#    ),
#    use_contour_definition(
#      threshold = 5,
#      color = c(0, 255, 0),
#      strokeWidth = 3
#    ),
#    use_contour_definition(
#      threshold = 15,
#      color = c(0, 0, 255),
#      strokeWidth = 5
#    )
#  )
#  
#  properties <- list(
#    contours = contours,
#    cellSize = 200,
#    elevationScale = 4,
#    getPosition = ~lng + lat
#  )
#  
#  deck <- deckgl(zoom = 10.5, pitch = 30) %>%
#    add_contour_layer(data = sf_bike_parking, properties = properties) %>%
#    add_basemap()
#  
#  if (interactive()) deck


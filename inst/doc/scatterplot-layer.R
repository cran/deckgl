## ----echo = FALSE-------------------------------------------------------------
example <- paste0(
  rprojroot::find_package_root_file(),
  "/inst/examples/deckgl-api-reference/scatterplot-layer.R"
)
do.call(knitr::read_chunk, list(path = example))

## ----scatterplot-layer, eval = FALSE------------------------------------------
#  data("bart_stations")
#  
#  properties <- list(
#    getPosition = ~lng + lat,
#    getRadius = JS("data => Math.sqrt(data.exits)"),
#    radiusScale = 6,
#    getFillColor = c(255, 140, 20),
#    getTooltip = ~name
#  )
#  
#  deck <- deckgl(zoom = 10.5, pitch = 35) %>%
#    add_scatterplot_layer(data = bart_stations, properties = properties) %>%
#    add_mapbox_basemap()
#  
#  if (interactive()) deck


## ----echo = FALSE-------------------------------------------------------------
example <- paste0(
  rprojroot::find_package_root_file(),
  "/inst/examples/deckgl-api-reference/line-layer.R"
)
do.call(knitr::read_chunk, list(path = example))

## ----line-layer, eval = FALSE-------------------------------------------------
#  data("bart_segments")
#  
#  properties <- list(
#    pickable = TRUE,
#    getWidth = 12,
#    getSourcePosition = ~from_lng + from_lat,
#    getTargetPosition = ~to_lng + to_lat,
#    getColor = JS("d => [Math.sqrt(d.inbound + d.outbound), 140, 0]"),
#    getTooltip = JS("object => `${object.from_name} to ${object.to_name}`")
#  )
#  
#  deck <- deckgl(zoom = 10, pitch = 20) %>%
#    add_line_layer(data = bart_segments, properties = properties) %>%
#    add_mapbox_basemap()
#  
#  if (interactive()) deck


#' Map the spatial distribution of crocodile activity
#' 
#' Creates a map from GPS data and colors the path according to corresponding ODBA values
#'
#'
#'@param data name of the dataset containing location and behavioral data
#'@param long name of column containing longitutde values
#'@param lat name of column containing latitude values
#'@param ODBA name of column containing ODBA values
#'@return a map showing the spatial distribution of crocodile activity
#'
#'@export 
#'

mapODBA <- function(data, long, lat, ODBA) {
  library(ggmap)
  library(cowplot)
  register_google(key = "AIzaSyDkDm-xDPMFeWS7F7CgQhALUGRA9sbTSZM")
  boundingbox <- c(left = -85.402851, bottom = 10.225468, right = -85.071261, top = 10.443905)
  map <- get_map(boundingbox, zoom = 11, maptype = "terrain")
  
  mapODBA <- ggmap(map) + 
    geom_path(data = data, aes(x = long, y = lat, color = ODBA),
              linewidth = 1.5, lineend = "round", alpha = 0.6) +
    theme(legend.position = "right")
  
  ggsave("mapODBA.png", plot = mapODBA, width = 8, height = 8, units = "in")
  
  return(mapODBA)
  
}

#mapODBA(data, "long", "lat", "ODBA")
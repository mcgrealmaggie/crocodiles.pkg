#' Map the spatial distribution of crocodile behaviors
#' 
#' Creates a map from GPS data and colors the points according to corresponding behavior
#'
#'
#'@param data name of the dataset containing location and behavioral data
#'@param long name of column containing longitutde values
#'@param lat name of column containing latitude values
#'@param behavior name of column containing assigned behavioral states
#'@return a map showing the spatial distribution of crocodile behaviors
#'
#'@export 
#'

mapBehavior <- function(data, long, lat, ODBA) {
  library(ggmap)
  library(cowplot)
  register_google(key = "AIzaSyDkDm-xDPMFeWS7F7CgQhALUGRA9sbTSZM")
  boundingbox <- c(left = -85.402851, bottom = 10.225468, right = -85.071261, top = 10.443905)
  map <- get_map(boundingbox, zoom = 11, maptype = "terrain")
  
  mapBehavior <- ggmap(map) + 
    geom_point(data = data, aes(x = long, y = lat, color = behavior)) +
    theme(legend.position = "right")
  
  return(mapBehavior)
  
}

#mapBehavior(data, "long", "lat", "behavior")
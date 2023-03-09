library(mapview)
library(sf)

airports <- read.csv("C:\\Users\\Owner\\Documents\\airports\\airports\\data\\airports.csv")

#convert to spatial data
airports_pts <- st_as_sf(airports, coords = c("long", "lat"), crs = 4269)

mapview(airports_pts, label  = "code", layer.name = "Airports")

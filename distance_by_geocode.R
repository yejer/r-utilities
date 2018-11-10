library(ggmap)
library(geosphere)
library(measurements)

 
# google maps api no longer works without a credit card
a <- geocode("houston texas", source = "dsk")

b <- geocode("dallas texas", source = "dsk")


d <- distm (a, b, fun = distHaversine)

conv_unit(d, "m", "mi")

library(ggmap)
library(ggplot2)
library(plyr)

# load ggmap to use geocode() to get name place coding
# sometimes hitting the Google maps server continuously will cause "NA" type of errors
# to skip this, force a pause in your code


list <- c('1118 GRAND CONCOURSE',
'Yankee Stadium',
'57 WADSWORTH TERRACE',
'80 MAPLE PKWY',
'171 W 161 ST',
'53-18 66 ST',
'2155 GRAND CONCOURSE',
'229 CHRYSTIE ST')


output <- list()

# I skipped 3 seconds between each request as a test

for(i in 1:length(list)){
  found <- geocode(list[i], output = "latlona", override_limit = FALSE)
  output[[i]] <- found
  Sys.sleep(3)
  
}




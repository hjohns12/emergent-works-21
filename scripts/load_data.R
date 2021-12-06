library(tidyverse)
library(geojsonio)
library(jsonlite)
library(broom)

# Link data ---------------------------------------------------------------

## json
json_file <- "https://query.data.world/s/x2fg2potwplsdxughuusj5zjei5gon"

## csv
csv_file <- "https://flourish.studio/data/workshop/countries.csv"

##geojson
geojson_file <- "https://flourish.studio/data/workshop/geojson/Mexico-States.geojson"


# Read data ---------------------------------------------------------------

spdf <- geojsonio::geojson_read("https://raw.githubusercontent.com/uclalawcovid19behindbars/data-viz/master/data-templates/us_states_hexgrid.geojson", what = "sp")

csv <- read_csv(csv_file)

states <- geojsonio::geojson_read(geojson_file, what = "sp")
states_out <- tidy(states)
ggplot() +
  geom_polygon(data = states_out, aes( x = long, y = lat, group = group), fill="#69b3a2", color="white") +
  theme_void() +
  coord_map()

bikes <- jsonlite::read_json(json_file, simplifyVector = TRUE) 
bikes_out <- as_tibble(bikes$data)

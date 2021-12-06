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
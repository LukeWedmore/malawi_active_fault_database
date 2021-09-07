#!/bin/bash

rm -f shapefile/MAFD*
ogr2ogr -f "ESRI Shapefile" shapefile/MAFD.shp geojson/MAFD.geojson

rm -f geopackage/*.gpkg
ogr2ogr -f "GPKG" geopackage/MAFD.gpkg geojson/MAFD.geojson

rm -f gmt/*.gmt
ogr2ogr -f "GMT" gmt/MAFD.gmt geojson/MAFD.geojson

rm -f kml/*.kml
ogr2ogr -f "KML" kml/MAFD_Faults.kml geojson/MAFD.geojson

#!/bin/bash

echo archiving geojson file
NOW=$(date +"%m-%d-%Y")
mv geojson/MOFD.geojson geojson/MOFD.$NOW.geojson

echo projecting to lat lon format and reformatting
ogr2ogr -sql "SELECT \"id\" AS MOFD_ID,Name AS Fault_Name,Fault_Age,slip_sense,FaultNotes AS Notes,Reference AS References FROM malawi_other_faults_database" -f "GeoJSON" geojson/MOFD.geojson geojson/Malawi_OtherFaults_20210908.geojson

echo ------------------------
echo converting to shapefile
rm -f shapefile/MOFD*
ogr2ogr -f "ESRI Shapefile" shapefile/MOFD.shp geojson/MOFD.geojson
echo ------------------------

echo ------------------------
echo converting to geopackage
rm -f geopackage/*.gpkg
ogr2ogr -f "GPKG" geopackage/MOFD.gpkg geojson/MOFD.geojson
echo ------------------------

echo ------------------------
echo converting to GMT
rm -f gmt/*.gmt
ogr2ogr -f "GMT" gmt/MOFD.gmt geojson/MOFD.geojson
echo ------------------------

echo ------------------------
echo converting to KML
rm -f kml/*.kml
ogr2ogr -f "KML" kml/MOFD.kml geojson/MOFD.geojson
echo ------------------------
echo finished converting

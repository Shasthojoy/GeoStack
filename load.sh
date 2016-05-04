#!/usr/bin/env bash

for f in /vagrant/data/*.shp
do
  basename=$(basename $f)
  filename="${basename%.*}"
  echo "--- LOADING SHAPEFILE: $filename ---"
  shp2pgsql -d -D -k -I -s 27700 $f $filename | psql -q -U vagrant -d vagrant
  echo "--- COMPLETED LOADING SHAPEFILE: $filename ---"
done

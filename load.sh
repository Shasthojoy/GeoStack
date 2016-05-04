#!/usr/bin/env bash

for f in /vagrant/data/*.shp
do
  basename=$(basename $f)
  filename="${basename%.*}"
  echo "Loading Shapefile: $basename"
  shp2pgsql -d -I -s 27700 $f $filename | psql -q -U vagrant -d vagrant
done

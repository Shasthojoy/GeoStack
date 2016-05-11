# GeoStack

Forked from https://github.com/DruidSmith/vagrant-geoserver-postgis

### Background

This is an easy and repeatable way to rapidly stand up a GeoServer instance, including PostgreSQL and PostGIS in an automated way, using vagrant.

### Post-Installation

```
vagrant ssh
sudo su - postgres
createuser -d -E -i -l -P -r -s vagrant
exit
createdb
psql -c "CREATE EXTENSION postgis;"
psql -c "CREATE EXTENSION postgis_topology;"
psql -c "CREATE EXTENSION fuzzystrmatch;"
psql -c "CREATE EXTENSION address_standardizer;"

```

### Loading Data

Copy Shapefiles into the `/data` directory and then:

```
vagrant ssh
cd /vagrant
./load.sh
```

The `shp2pgsql` utility is set to import data in the British National Grid (BNG) coordinate reference system (SRID:27700), for example [Ordnance Survey OpenData](https://www.ordnancesurvey.co.uk/business-and-government/products/opendata-products-grid.html) products.

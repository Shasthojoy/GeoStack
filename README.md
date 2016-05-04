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
psql
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
CREATE EXTENSION fuzzystrmatch;
CREATE EXTENSION address_standardizer;

```

# Bitnami's PostgreSQL + PostGIS

A PostgreSQL Docker template based on Bitnami's PostgreSQL docker image with PostGIS enabled

## Docker image

In this repository, you'll find a Makefile to build a docker image. The Makefile generates the Dockerfile where you have to define the wanted Postgres version, PostGIS version, and image tag (`PGVERSION`, `POSTGIS_VERSION`, and `TAG` are madatory variables).

For example, if you want to build an image named `bitnami-postgres-postgis:pg-10.6-postgis-2.5.1` that uses postgres 10 and 2.5.1 for postgis you should execute:

```bash
make PGVERSION=10.6.0 TAG=bitnami-postgresql-postgis:pg-10.6-postgis-2.5.1
```

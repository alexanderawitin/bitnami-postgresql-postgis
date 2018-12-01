# Bitnami's PostgreSQL + PostGIS

A PostgreSQL Docker template based on Bitnami's PostgreSQL docker image with PostGIS enabled

## Docker image

In this repository, you'll find a Makefile to build a docker image. The Makefile generates the Dockerfile where you can optionally define the wanted Bitnami Postgres version, PostGIS version, and image tag (`TAG` is the only mandatory variable).

#### Example

```bash
make TAG=bitnami-postgresql-postgis:latest
```

### Defaults

|       Parameter        |                        Description                      | Default  |
|------------------------|---------------------------------------------------------|----------|
| `PGVERSION`            | Tag of `bitnami/postgresql` to be used as a base image. | `10.6.0` |
| `POSTGIS_VERSION`      | Specific PostGIS version to install.                    | `2.5.1`  |
| `TAG`                  | The tag for the built docker image (required).          | `{TAG}`  |
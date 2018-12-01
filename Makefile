ifndef PGVERSION
    $(info PGVERSION is undefined, using default value ("10.6.0"). To view available versions, go to https://hub.docker.com/r/bitnami/postgresql/tags/.)
	PGVERSION=10.6.0
endif
ifndef POSTGIS_VERSION
    $(info POSTGIS_VERSION is undefined, using default value ("2.5.1").)
	POSTGIS_VERSION=2.5.1
endif
ifndef TAG
    $(error TAG is undefined)
endif

TEMPFILE := $(shell mktemp)

.PHONY: build

build: Dockerfile
	docker build -t ${TAG} .
	-rm Dockerfile

Dockerfile: FORCE
	sed -e "s/\$${PGVERSION}/${PGVERSION}/; s/\$${POSTGIS_VERSION}/${POSTGIS_VERSION}/" Dockerfile.template > Dockerfile

FORCE:

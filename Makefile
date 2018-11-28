ifndef PGVERSION
    $(error PGVERSION is undefined)
endif
ifndef POSTGIS_VERSION
    $(error POSTGIS_VERSION is undefined)
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

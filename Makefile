###############################################################################
# PROPERTIES
###############################################################################
DOCKER_REGISTRY = powerpro-gcloud-sdk-gae-java11.jfrog.io
NAME = gcloud-sdk-gae-java11
VERSION ?= latest

.PHONY: default
default: build;

###############################################################################
# CONTAINER
###############################################################################
build:
	@docker build --rm -t $(DOCKER_REGISTRY)/$(NAME):$(VERSION) .

push:
	@docker push $(DOCKER_REGISTRY)/$(NAME):$(VERSION)

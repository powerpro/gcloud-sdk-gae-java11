Google Cloud SDK Docker Image
---

This container is used for a continuous integration build environment such as CircleCI.

Pre-built images are available to be pulled from [Artifactory](https://powerpro.jfrog.io/ui/repos/tree/General/gcloud-sdk-gae-java11).

It is essentially a mirror of the publicly hosted version on [Docker
Hub](https://github.com/powerpro/docker-google-cloud-sdk-gae-java11) and may be used in the event the public repo is
unavailable or for experimenation with updates.

**Provides:**

Debian Alpine, Google Cloud SDK, OpenJDK11, AppEngine Components and PubSub Emulator

**See also:**
- https://github.com/GoogleCloudPlatform/cloud-sdk-docker
- https://cloud.google.com/pubsub/docs/emulator

# Getting started

## CircleCI

Use this image in ``.circleci/config.yml``.

```
version: 2
jobs:
  build:
    docker:
      - image: powerpro-gcloud-sdk-gae-java11.jfrog.io/gcloud-sdk-gae-java11:latest
        auth:
          username: $ARTIFACTORY_USER
          password: $ARTIFACTORY_PASS

```

## Local Dev Usage


```
$ docker pull powerpro-docker-virtual/gcloud-sdk-gae-java11
$ docker run -t powerpro-gcloud-sdk-gae-java11 gcloud
# OR
$ docker run -it powerpro-gcloud-sdk-gae-java11 /bin/bash
```

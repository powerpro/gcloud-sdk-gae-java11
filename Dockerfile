# Docker Best Practices
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices

FROM google/cloud-sdk:alpine

# Always use the latest JDK8
# hadolint ignore=DL3018
RUN apk --no-cache add openjdk8
RUN gcloud components update \
    && gcloud components install \
        beta \
        app-engine-java \
        pubsub-emulator

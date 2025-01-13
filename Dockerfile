# Base image
FROM alpine:latest

# Maintainer information
ARG VCS_REF
LABEL maintainer="Lucas Albers <https://github.com/lalbers-lz4>"
LABEL org.opencontainers.image.source="https://hub.docker.com/r/lalberslz4/duckdns"
# Install tools required
RUN apk add --no-cache curl

# Copy scripts
COPY ./scripts /scripts
WORKDIR /scripts
RUN chmod -R +x /scripts

# Image starting command
CMD ["/bin/sh", "/scripts/start.sh"]

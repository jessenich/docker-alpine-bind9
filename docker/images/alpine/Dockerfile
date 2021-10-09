ARG VARIANT=latest
FROM jessenich91/alpine:"$VARIANT"

LABEL maintainer="Jesse N. <jesse@keplerdev.com>" \
      org.opencontainers.image.source="https://github.co/jessenich/docker-alpine-bind9"

RUN apk add --no-cache --update \
        bind \
        bind-doc \
        bind-tools \
        bind-plugins \
        bind-openrc \
        bind-dnssec-root \
        bind-dnssec-tools \
        bind-dev \
        bind-libs
        
EXPOSE 53
CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]

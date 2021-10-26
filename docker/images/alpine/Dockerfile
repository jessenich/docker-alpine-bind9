ARG VARIANT=latest
FROM jessenich91/alpine:"$VARIANT"

LABEL maintainer="Jesse N. <jesse@keplerdev.com>" \
      org.opencontainers.image.source="https://github.co/jessenich/docker-alpine-bind9"

RUN apk --no-cache --update add \
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

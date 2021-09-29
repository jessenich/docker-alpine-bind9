FROM jessenich91/alpine:latest

LABEL maintainer="Jesse N. <jesse@keplerdev.com>" \
      org.opencontainers.image.source="https://github.co/jessenich/docker-alpine-bind9"

RUN apk add --no-cache --update bind
EXPOSE 53
CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
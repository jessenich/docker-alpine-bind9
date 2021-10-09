ARG VARIANT=latest
FROM debian:"$VARIANT"

LABEL maintainer="Jesse N. <jesse@keplerdev.com>" \
      org.opencontainers.image.source="https://github.co/jessenich/docker-alpine-bind9"

RUN apt-get update && apt-get install -y bind
EXPOSE 53
CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
FROM alpine:3.7
MAINTAINER Lukas Danckwerth <lukas.danckwerth@gmx.de>

RUN apk add --no-cache ffmpeg

# create working directory
RUN mkdir -p /app
RUN mkdir -p /app/.raw

COPY scripts /app/scripts
COPY entrypoint /

RUN chmod +x entrypoint

ENTRYPOINT ["/entrypoint"]

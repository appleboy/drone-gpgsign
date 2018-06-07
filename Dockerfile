FROM plugins/base:amd64

LABEL maintainer="Drone.IO Community <drone-dev@googlegroups.com>" \
  org.label-schema.name="Drone GPGSign" \
  org.label-schema.vendor="Drone.IO Community" \
  org.label-schema.schema-version="1.0"

RUN apk add --no-cache gnupg

ADD release/linux/amd64/drone-gpgsign /bin/
ENTRYPOINT ["/bin/drone-gpgsign"]

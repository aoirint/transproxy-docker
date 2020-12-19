#!/bin/bash
docker run --rm -it \
  -e HTTP_PROXY \
  -e HTTPS_PROXY \
  --cap-add=NET_ADMIN \
  aoirint/joplin-docker-proxy \
  bash

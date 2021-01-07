#!/bin/bash
docker build ./docker \
  -t aoirint/transproxy \
  --build-arg HTTP_PROXY \
  --build-arg HTTPS_PROXY "$@"

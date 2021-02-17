IMAGE_NAME = aoirint/transproxy
IMAGE_TAG  = latest
BASE_IMAGE =
COMMAND    = /bin/sh

build-alpine:
	docker build \
		-t "$(IMAGE_NAME):$(IMAGE_TAG)" \
		-f "./docker/Dockerfile.alpine" \
		--build-arg "BASE_IMAGE=$(BASE_IMAGE)" \
		--build-arg HTTP_PROXY \
		--build-arg HTTPS_PROXY \
		--build-arg NO_PROXY ./docker

build-ubuntu:
	docker build \
		-t "$(IMAGE_NAME):$(IMAGE_TAG)" \
		-f "./docker/Dockerfile.ubuntu" \
		--build-arg "BASE_IMAGE=$(BASE_IMAGE)" \
		--build-arg HTTP_PROXY \
		--build-arg HTTPS_PROXY \
		--build-arg NO_PROXY ./docker

run:
	docker run --rm -it \
	  -e HTTP_PROXY \
	  -e HTTPS_PROXY \
		-e NO_PROXY \
	  --cap-add=NET_ADMIN \
	  "$(IMAGE_NAME):$(IMAGE_TAG)" "$(COMMAND)"

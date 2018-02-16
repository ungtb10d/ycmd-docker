IMAGE_NAME := alexandrecarlton/ycmd
YCMD_REVISION := 9c9ef18

all: build

build:
	docker build \
		--build-arg=YCMD_REVISION=$(YCMD_REVISION) \
		--tag=$(IMAGE_NAME) \
		.
.PHONY: build

test:
	python3 tests/example_client.py
.PHONY: test

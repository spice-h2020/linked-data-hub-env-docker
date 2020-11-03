#!/usr/bin/env bash
docker build --no-cache -t lasprino/rdf.publisher:$1 --build-arg PUBLISHER_VERSION=$1 -f Dockerfile .

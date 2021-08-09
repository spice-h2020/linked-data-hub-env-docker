#!/usr/bin/env bash
docker build --no-cache -t enridaga/rdf.publisher:$1 --build-arg PUBLISHER_VERSION=$1 -f Dockerfile .

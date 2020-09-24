#!/usr/bin/env bash
docker build -t enridaga/spice-datahub-apif:$1 --build-arg APIF_VERSION=$1 -f Dockerfile .

#!/usr/bin/env bash
version=${1:-v0.6.6}
docker run --detach --name=spice-datahub-apif --publish 82:80 enridaga/spice-datahub-apif:$version

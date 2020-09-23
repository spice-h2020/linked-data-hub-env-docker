#!/usr/bin/env bash
version=${1:-v0.6.9}
docker run --detach --name=spice-datahub-apif -e VIRTUAL_HOST=spice-apif.local enridaga/spice-datahub-apif:$version

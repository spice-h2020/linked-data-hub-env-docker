#!/usr/bin/env bash
docker run --detach --name=spice-datahub-apif -e VIRTUAL_HOST=spice-apif.local enridaga/spice-datahub-apif:$1

#!/usr/bin/env bash
userdir=$(cd && pwd)
devfolder=${1-"$userdir/spice-datahub"}
domain=${2-"spice-datahub.local"}
docker run --detach --name=spice-datahub-webserver -e VIRTUAL_HOST="$domain" --mount src="${devfolder}",target="/var/www/spice-datahub",type=bind enridaga/spice-datahub-webserver:v0.5

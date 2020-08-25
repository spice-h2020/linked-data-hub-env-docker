#!/usr/bin/env bash
userdir=$(cd && pwd)
devfolder=${1-"$userdir/Development/DataHubDevelopment/spice-datahub"}
docker run --detach --name=spice-datahub-webserver --mount src="${devfolder}",target="/var/www/spice-datahub",type=bind --publish 80:80 enridaga/spice-datahub-webserver:v0.1

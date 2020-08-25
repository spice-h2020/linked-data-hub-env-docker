#!/usr/bin/env bash
docker network create spice-datahub
docker network connect spice-datahub spice-datahub-mysql
docker network connect spice-datahub spice-datahub-webserver
docker network connect spice-datahub spice-datahub-mongodb
docker network connect spice-datahub spice-datahub-apif
docker network inspect spice-datahub

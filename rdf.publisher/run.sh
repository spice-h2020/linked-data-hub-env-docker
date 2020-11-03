#!/usr/bin/env bash
docker run --detach --name=spice-datahub-rdfpublisher lasprino/rdf.publisher:$1

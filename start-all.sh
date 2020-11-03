./network.sh > /dev/null 2>&1
docker start spice-datahub-proxy
docker start spice-datahub-mongodb
docker start spice-datahub-apif
docker start spice-datahub-mysql
docker start spice-datahub-webserver
docker start spice-datahub-blazegraph
docker start spice-datahub-rdfpublisher
./network.sh > /dev/null 2>&1
docker restart spice-datahub-proxy

./network.sh > /dev/null 2>&1
cd proxy && ./run.sh && cd ..
cd mongodb && ./run.sh && cd ..
cd apif && ./run.sh v0.6.10 && cd ..
cd mysql && ./run.sh && cd ..
cd webserver && ./run.sh && cd ..
cd rdf.publisher && ./run.sh 0.0.1 && cd ..
cd blazegraph && ./run.sh && cd ..
./network.sh > /dev/null 2>&1
docker restart spice-datahub-proxy
sleep 2

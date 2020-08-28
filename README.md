Development environment for the SPICE Linked Data Hub
# linked-data-hub-env-docker

This project includes instructions to build docker images for developing the SPICE Linked Data Hub.

Four containers:

- spice-datahub-webserver: the Apache+PHP7.2 environment for running the LDH
- spice-datahub-apif: middleware of the document server
- spice-datahub-mysql: the MySQL database server used by the LDH
- spice-datahub-mongodb: database server for managing JSON-LD documents
- spice-datahub-proxy: gateway and virtual hosts (relyiing on `https://github.com/nginx-proxy`)

You need to clone the repository but you don't need to build the images unless you want to change them.

## Setup
Configure your local DNS file to include two domains (on Linux/Mac it should be `/etc/hosts`:
```
127.0.0.1 spice-datahub.local
127.0.0.1 spice-apif.local
```

## Start / Stop
To start the containers (including configuring the internal network and proxy):
```
./start.sh
```
The web portal can be accessed at `http://spice-datahub.local`

The JSON-lD API can be accessed at `http://spice-apif.local` 

To stop all containers:
```
./stop.sh
```

## Build the images
Don't do that unless you know what you're doing.
```
cd mongodb && ./build.sh v0.6.7 && cd ..
cd apif && ./build.sh v0.6.7 && cd ..
cd webserver && ./build.sh && cd ..

```

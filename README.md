Development environment for the SPICE Linked Data Hub
# linked-data-hub-env-docker

This project includes instructions to build docker images for developing the SPICE Linked Data Hub.

Seven containers:

- spice-datahub-webserver: the Apache+PHP7.2 environment for running the LDH
- spice-datahub-apif: middleware of the document server
- spice-datahub-mysql: the MySQL database server used by the LDH
- spice-datahub-mongodb: database server for managing JSON-LD documents
- spice-datahub-proxy: gateway and virtual hosts (relyiing on `https://github.com/nginx-proxy`)
- spice-datahub-rdfpublisher: the component aimed at transformming data into RDF and uploading RDF triples to the blazegrpah store
- spice-datahub-blazegraph: the quadstore used by the rdfpublisher

You need to clone the repository but you don't need to build the images unless you want to change them.

## Setup
Clone the linked-data-hub repository in ~/spice-datahub, then:
```
cd ~/spice-datahub
composer install
```

Create the config file in `~/spice-datahub/config/autoload/local.php`, by coping `locap.php.dist` and editing as follows:
```
return [
    'db'    => [
            'host'     => 'spice-datahub-mysql',
            'port'     => '3306',
            'user'     => 'root',
            'password' => 'NMg17ruPknQSC2rF',
            'dbname'   => 'spice_datahub',
            'charset'  => 'utf8mb4'
        ],
    'mkdf-stream'   =>  [
            'user'  =>  'datahub-admin',
            'pass'  =>  'DATAHUB1234567890',
            'server-url'    =>  'http://spice-datahub-apif',
            'public-url'    =>  'https://spice-apif.local'
        ],
        'mkdf-file' => [
            'destination' => '/var/www/spice-datahub/data/files'
        ]
];
```
(passowrds in the example match the ones configured in the various containers, you can change if you wish).

Configure your local DNS file to include two domains (on Linux/Mac it should be `/etc/hosts`:
```
127.0.0.1 spice-datahub.local
127.0.0.1 spice-apif.local
```
To run the images and create the containers (only one time):
```
./run-all.sh
```
The web portal can be accessed at `http://spice-datahub.local`

The JSON-lD API can be accessed at `http://spice-apif.local` 

## Stop / Restart

To stop all containers:
```
./stop-all.sh
```
To start the containers (including configuring the internal network and proxy):
```
./start-all.sh
```

## Building the images
Don't do that unless you know what you're doing.
```
cd mongodb && ./build.sh v0.6.7 && cd ..
cd apif && ./build.sh v0.6.7 && cd ..
cd webserver && ./build.sh && cd ..

```

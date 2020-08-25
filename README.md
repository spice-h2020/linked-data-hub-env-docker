Development environment for the SPICE Linked Data Hub
# linked-data-hub-env-docker

This project includes instructions to build docker images for developing the SPICE Linked Data Hub.

Four images:

- mysql: the MySQL database server used by the LDH
- webserver: the Apache+PHP7.2 environment for running the LDH
- mongodb: database server for managing JSON-LD documents
- apif: middleware of the document server

FROM mongo:latest

# File Author / Maintainer
MAINTAINER enridaga
LABEL version="0.1.1"
LABEL description="MKDF API Factory image with Dockerfile."

ENV MONGO_INITDB_ROOT_USERNAME admin
ENV MONGO_INITDB_ROOT_PASSWORD MONGO1234567890
ENV MONGO_INITDB_DATABASE admin

ADD mongodb-init.js /docker-entrypoint-initdb.d/

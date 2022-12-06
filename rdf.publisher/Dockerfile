FROM openjdk:11
ARG PUBLISHER_VERSION
LABEL description="RDF Publisher image with Dockerfile."

RUN wget https://github.com/spice-h2020/rdf.uploader/releases/download/${PUBLISHER_VERSION}/spice.rdf-uploader-${PUBLISHER_VERSION}.jar -O spice.rdf-uploader.jar

COPY config.properties .
COPY blazegraph.properties .

CMD ["java", "-jar", "spice.rdf-uploader.jar"]

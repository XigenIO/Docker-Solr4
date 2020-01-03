FROM openjdk:8-alpine

RUN mkdir -p /opt \
    && cd /opt \
    && wget https://archive.apache.org/dist/lucene/solr/4.10.4/solr-4.10.4.tgz \
    && tar zxf solr-4.10.4.tgz \
    && rm -rf solr-4.10.4.tgz \
    && mv solr-4.10.4 solr

WORKDIR /opt/solr/example
EXPOSE 8983

CMD ["java", "-jar", "start.jar"]

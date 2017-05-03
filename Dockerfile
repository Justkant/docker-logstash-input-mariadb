FROM docker.elastic.co/logstash/logstash:5.3.2
MAINTAINER Quentin Jaccarino <quentin@tracktl.com>

RUN mkdir -p /opt/logstash/vendor/jar/jdbc/ && \
    wget https://downloads.mariadb.com/Connectors/java/connector-java-1.5.9/mariadb-java-client-1.5.9.jar -O /opt/logstash/vendor/jar/jdbc/mariadb-java-client-1.5.9.jar && \
    /opt/logstash/bin/plugin install logstash-input-jdbc
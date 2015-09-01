# WebSphere Liberty Asset Repository Service

FROM vertigo/java8

MAINTAINER Andre Fernandes <andre@vertigo.com.br>

RUN wget http://registry.vtg/files/ibm/larsClient.zip -q -O /opt/larsClient.zip && \
    mkdir -p /opt/lars && \
    unzip /opt/larsClient.zip -d /opt/lars && \
    rm -f /opt/larsClient.zip && \
    wget http://registry.vtg/files/ibm/wlp-featureRepo-8.5.5.6.zip -q -O /opt/wlp-repo.zip && \
    mkdir -p /opt/lars-repo && \
    unzip /opt/wlp-repo.zip -d /opt/lars-repo && \
    rm -f /opt/wlp-repo.zip

ENTRYPOINT ["/opt/lars/bin/larsClient"]

CMD ["help"]

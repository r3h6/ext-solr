FROM solr:6.3.0
MAINTAINER Timo Hund <timo.hund@dkd.de>
ENV TERM linux

RUN rm -fR /opt/solr/server/solr/*

COPY Resources/Private/Solr/ /opt/solr/server/solr

USER root

RUN chown -R solr:solr /opt/solr/server/solr/

USER solr

VOLUME ["/opt/solr/server/solr/data"]

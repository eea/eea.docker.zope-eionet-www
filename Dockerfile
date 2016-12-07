FROM eeacms/zope:2.13.22
MAINTAINER "European Environment Agency (EEA): IDM2 A-Team" <eea-edw-a-team-alerts@googlegroups.com>

ENV EVENT_LOG_LEVEL=INFO \
    Z2_LOG_LEVEL=INFO \
    ZEO_CLIENT=true \
    ZEO_ADDRESS=zeoserver:8100 \
    ZSERVER_THREADS=4 \
    BLOB_CACHE_SIZE=500000000 \
    SETUPTOOLS=28.6.0 \
    ZCBUILDOUT=2.5.3

COPY src/versions.cfg \
     src/sources.cfg \
     src/base.cfg $ZOPE_HOME/

RUN mkdir -p $ZOPE_HOME/products \
    && mkdir -p $ZOPE_HOME/var/log/ldap


USER root
RUN ./install.sh \
    chown -R 500:500 $ZOPE_HOME

USER zope-www

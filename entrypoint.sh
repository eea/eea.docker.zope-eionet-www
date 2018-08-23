#!/bin/bash
set -e

if [ -n "${LDAP_HOST}" ]; then

    echo "ldap:
    host: ${LDAP_HOST}
    encoding: utf-8
    root_DNs:
        - ${LDAP_ROOT_DNS}
    dn: ${LDAP_DN}
    password: ${LDAP_PASSWORD}
sqlite:
    path: ./ldap_eionet_europa_eu.db

logging:
    file: log/ldap.txt" > /opt/zope/var/log/ldap/config.yaml

fi

exec /zope-entrypoint.sh "$@" 



# eea.docker.zope-eionet-www

Docker Zope Image used for the [EIONET website](http://eionet.europa.eu)


## Supported environment variables

* `EVENT_LOG_LEVEL` - Set the level of the console output for the event log.
* `Z2_LOG_LEVEL` - Set the log level for the access log.
* `ZEO_CLIENT` - Set to ‘true’ to make this instance a ZEO client.
* `ZEO_ADDRESS` - Set the address of the ZEO server.
* `ZSERVER_THREADS` - Specify the number of threads that Zope’s ZServer web server will use to service requests.
* `BLOB_CACHE_SIZE` - Set the maximum size of the ZEO blob cache, in bytes.
* `SETUPTOOLS` - setuptools version.
* `ZCBUILDOUT` - zc.buildout version.
* `LDAP_HOST` - LDAP host
* `LDAP_ROOT_DNS` - LDAP root DNs to use for export
* `LDAP_DN` - LDAP user DN 
* `LDAP_PASSWORD` - LDAP user password


## Copyright and license

The Initial Owner of the Original Code is European Environment Agency (EEA).
All Rights Reserved.

The Original Code is free software;
you can redistribute it and/or modify it under the terms of the GNU
General Public License as published by the Free Software Foundation;
either version 2 of the License, or (at your option) any later
version.

## Funding

[European Environment Agency (EU)](http://eea.europa.eu)

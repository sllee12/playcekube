#!/bin/sh
BASEDIR=$(dirname $(readlink -f $0))

if [ -f ${BASEDIR}/../../playcekube.conf ]; then
  . ${BASEDIR}/../../playcekube.conf
fi

# clean
helm uninstall keycloak -n keycloak
rm -rf ${BASEDIR}/installed-values.yaml
kubectl delete ns keycloak


#!/bin/bash

set -e

export ENVOY_ADMIN_API="http://127.0.0.1:15000"
export ISTIO_QUIT_API="http://127.0.0.1:15020"

if curl --silent --max-time=${ENVOY_ADMIN_API} > /dev/null; then
  export SCUTTLE_CMD=/usr/bin/scuttle
fi

if [ "${1}" = "" ]; then
  exec ${SCUTTLE_CMD} /bin/bash -l
else
  exec ${SCUTTLE_CMD} "$@"
fi

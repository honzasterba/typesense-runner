#!/bin/sh

echo Data dir is $TYPESENSE_DATA_DIR
rm -vrf $TYPESENSE_DATA_DIR/*
mkdir -pv $TYPESENSE_DATA_DIR
ls -la $TYPESENSE_DATA_DIR
echo Touching
touch $TYPESENSE_DATA_DIR/.writable-check
echo Done touching
ls -la $TYPESENSE_DATA_DIR

# --api-port	false	Port on which Typesense API service listens. Default: 8108
# --peering-address	false	Internal IP address to which Typesense peering service binds. If this parameter is not specified, Typesense will attempt to use the first available internal IP.
# --peering-port	false	Port on which Typesense peering service listens. Default: 8107

TYPESENSE_API_PORT=$PORT
TYPESENSE_PEERING_PORT=$((i+1))

./typesense-server

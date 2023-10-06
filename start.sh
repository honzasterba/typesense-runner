#!/bin/bash

echo Data dir is $DATA_DIR
rm -vrf $DATA_DIR/typesense

# --api-port	false	Port on which Typesense API service listens. Default: 8108
# --peering-address	false	Internal IP address to which Typesense peering service binds. If this parameter is not specified, Typesense will attempt to use the first available internal IP.
# --peering-port	false	Port on which Typesense peering service listens. Default: 8107

export TYPESENSE_API_PORT=$PORT
export TYPESENSE_PEERING_PORT=$((i+1))
export TYPESENSE_DATA_DIR=$DATA_DIR/typesense
mkdir -pv $TYPESENSE_DATA_DIR

./typesense-server

find $DATA_DIR
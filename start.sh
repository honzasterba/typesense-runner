#!/bin/bash

echo Data dir is $DATA_DIR
rm -vrf $DATA_DIR/typesense

export TYPESENSE_API_PORT=10000
export TYPESENSE_PEERING_PORT=10001
export TYPESENSE_DATA_DIR=$DATA_DIR/typesense
mkdir -pv $TYPESENSE_DATA_DIR

./typesense-server

find $DATA_DIR

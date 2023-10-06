#!/bin/sh

env
stat $TYPESENSE_DATA_DIR
mkdir -p $TYPESENSE_DATA_DIR
touch $TYPESENSE_DATA_DIR/.writable-check

./typesense-server
#!/bin/sh

env
mkdir -pv $TYPESENSE_DATA_DIR
ls -la $TYPESENSE_DATA_DIR
touch -v $TYPESENSE_DATA_DIR/.writable-check
ls -la $TYPESENSE_DATA_DIR

./typesense-server
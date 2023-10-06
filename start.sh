#!/bin/sh

env
mkdir -pv $TYPESENSE_DATA_DIR
ls -la $TYPESENSE_DATA_DIR
echo Touching
touch $TYPESENSE_DATA_DIR/.writable-check
echo Done touching
ls -la $TYPESENSE_DATA_DIR

./typesense-server
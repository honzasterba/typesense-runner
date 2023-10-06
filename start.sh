#!/bin/sh

echo Data dir is $TYPESENSE_DATA_DIR
rm -vrf $TYPESENSE_DATA_DIR/*
mkdir -pv $TYPESENSE_DATA_DIR
ls -la $TYPESENSE_DATA_DIR
echo Touching
touch $TYPESENSE_DATA_DIR/.writable-check
echo Done touching
ls -la $TYPESENSE_DATA_DIR

./typesense-server

find $TYPESENSE_DATA_DIR
exit 1
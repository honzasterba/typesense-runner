#!/bin/bash

# Set some reasonable defaults
TYPESENSE_API_PORT=${TYPESENSE_API_PORT:=$PORT}
TYPESENSE_PEERING_PORT=${TYPESENSE_PEERING_PORT:=10001}

# Prepare nodes config file
if [ "${TYPESENSE_NODES}" != "" ]
then
  echo "Preparing nodes config file..."
  echo "${TYPESENSE_NODES}" > nodes.txt
  TYPESENSE_NODES=nodes.txt
fi

# Check max threads config
TYPESENSE_THREAD_POOL_SIZE_MAX=200 # limitation of railway containers
TYPESENSE_THREAD_POOL_SIZE=${TYPESENSE_THREAD_POOL_SIZE:=32}
if [ $TYPESENSE_THREAD_POOL_SIZE -gt $TYPESENSE_THREAD_POOL_SIZE_MAX ]
then
  echo "Limiting thread pool size to $TYPESENSE_THREAD_POOL_SIZE_MAX (Railway limitation)"
  TYPESENSE_THREAD_POOL_SIZE=200
fi

env

./typesense-server


#!/bin/sh

VERSION=0.25.1
URL=https://dl.typesense.org/releases/${VERSION}/typesense-server-${VERSION}-linux-amd64.tar.gz

echo Downloading typesense binary from ${URL}...
curl -O ${URL}

echo Download finished. Extracting...
tar xvvf *.tar.gz

echo Cleaning up...
rm -vrf *.tar.gz
rm -vrf *.md5.txt

echo Done!

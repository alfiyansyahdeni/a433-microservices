#!/bin/bash

# untuk melakukan build dari dockerfile
docker build -t item-app:v1

# untuk mengecek list docker images yang ada
docker images

# untuk push docker images ke docker hub
cat ../dockerpass.txt | docker login --username denialfiyansyah --password-stdin
docker tag item-app:v1 item-app:v1
docker push item-app:v1
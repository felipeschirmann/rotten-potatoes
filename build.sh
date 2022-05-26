#!/bin/bash
PYTHON_VERSION=$1
APP_VERSION=$2

sed "s/<python-version>/$PYTHON_VERSION/g" Dockerfile.template > Dockerfile
docker build . -t rotten-potatoes:v$APP_VERSION --no-cache

# for run image uncomment below
#docker run -d -p 8085:5000 rotten-potatoes:v$APP_VERSION

docker-compose -f docker-compose.yaml up -d   # for docker-compose up

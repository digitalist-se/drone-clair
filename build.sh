#!/bin/bash
BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
IMAGE=drone-clair
ORG=digitalist
docker build -t $ORG/$IMAGE:$BRANCH .
docker push $ORG/$IMAGE:$BRANCH

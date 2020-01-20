#!/bin/bash -xe

#Assumes the latest tag is what you want to push.

TAG=${1:-$(git rev-parse HEAD)}

docker tag mvfd/apparatus-tracking:$TAG 322899343079.dkr.ecr.us-east-1.amazonaws.com/mvfd/apparatus-tracking:$TAG

docker push 322899343079.dkr.ecr.us-east-1.amazonaws.com/mvfd/apparatus-tracking:$TAG
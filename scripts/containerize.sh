#!/bin/bash -xe

TAG=$(git rev-parse HEAD)

GOOS=linux go build -a -installsuffix cgo -o apparatus-tracking github.com/spencerdrak/apparatus-tracking

cp ./apparatus-tracking ../

docker build -t mvfd/apparatus-tracking:$TAG ../

rm ../apparatus-tracking
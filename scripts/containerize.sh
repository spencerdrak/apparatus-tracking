#!/bin/bash -xe

GOOS=linux go build -a -installsuffix cgo -o apparatus-tracking github.com/spencerdrak/apparatus-tracking

cp ./apparatus-tracking ../

docker build -t local/apparatus-tracking:test ../

rm ../apparatus-tracking
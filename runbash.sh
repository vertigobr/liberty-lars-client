#!/bin/sh
ENVBASH=$1
ENVBASH=${ENVBASH:-"bash"}
#echo "ENVBASH=$ENVBASH"
docker run --rm -ti --entrypoint=$ENVBASH vertigo/liberty-lars-client:latest ${@:2}

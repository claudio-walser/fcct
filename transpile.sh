#!/bin/bash

ROLE=$1 || 'dns'

docker run --rm -v $(pwd):/srv quay.io/coreos/fcct:latest -input /srv/${ROLE}.fcc -output /srv/${ROLE}.ign -pretty -strict

mv ${ROLE}.ign nginx/
#!/bin/bash

docker run --rm -v $(pwd):/srv quay.io/coreos/fcct:latest -input /srv/dns.fcc -output /srv/dns.ign -pretty -strict
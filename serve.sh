#!/bin/bash

docker rm -f fcos-ignitions
docker run --name fcos-ignitions -v $(pwd)/nginx/:/usr/share/nginx/html:ro -p 80:80 -d nginx

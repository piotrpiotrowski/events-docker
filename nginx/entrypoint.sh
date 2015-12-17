#!/bin/bash
set -e
echo "siema"

cd /usr/share/nginx/html/js/ 
envsubst '$api_url' < main.js > temporaryMain.js && mv temporaryMain.js main.js

export host_ip=`/sbin/ip route|awk '/default/ { print $3 }'` 
envsubst '$host_ip' < main.js > temporaryMain.js && mv temporaryMain.js main.js

exec "$@"

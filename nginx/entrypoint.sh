#!/bin/bash
set -e

cd /usr/share/nginx/html/js/ 

export host_ip=`/sbin/ip route|awk '/default/ { print $3 }'` 
envsubst '$api_url $host_ip' < main.js > temporaryMain.js && mv temporaryMain.js main.js
envsubst '$api_url $host_ip' < main.js > temporaryMain.js && mv temporaryMain.js main.js

exec "$@"

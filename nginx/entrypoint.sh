#!/bin/bash
set -e

cd /usr/share/nginx/html/js/ 

export host_ip=`/sbin/ip route|awk '/default/ { print $3 }'` 
envsubst '$protocol $host_ip $host_port $api_url' < main.js > temporaryMain.js && mv temporaryMain.js main.js

exec "$@"

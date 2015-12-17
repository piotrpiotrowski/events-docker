#!/bin/bash
set -e
export host_ip=`/sbin/ip route|awk '/default/ { print $3 }'`
cd /usr/share/nginx/html/js/ && envsubst '$api_url$host_ip' < main.js > temporaryMain.js && mv temporaryMain.js main.js

exec "$@"

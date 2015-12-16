#!/bin/bash
set -e

cd /usr/share/nginx/html/js/ && envsubst '$API_URL' < main.js > temporaryMain.js && mv temporaryMain.js main.js

exec "$@"

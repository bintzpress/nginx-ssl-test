#!/usr/bin/env bash

envsubst < /etc/nginx/conf.d/nginx.temp > /etc/nginx/conf.d/default.conf
exec nginx -g 'daemon off;'
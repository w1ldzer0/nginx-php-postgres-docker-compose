#!/usr/bin/env sh
set -eu

envsubst '${APP_NAME}' < /etc/nginx/conf.d/app.conf.template > /etc/nginx/conf.d/app.conf
exec "$@"

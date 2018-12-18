#!/bin/ash

/usr/sbin/nginx -c /etc/nginx/nginx.conf

cd /app

exec uwsgi -s /tmp/demo.sock --manage-script-name --mount /app=app:app --master --enable-threads --uid=102 --gid=101 --chmod-socket=660



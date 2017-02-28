#! /bin/bash

set -e 

echo "Docker Entrypoint"

cd /home/app/code/server

sleep 5

python ./manage.py migrate

echo "Running supervisord....."

supervisord -n -c /etc/supervisor/conf.d/supervisor-app.conf

echo "Supervisord exited"

#! /bin/bash

cd web_app
ng build -o static/ -bh /static/

cd ..
python manage.py collectstatic --noinput

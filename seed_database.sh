#!/bin/bash

rm db.sqlite3
rm -rf ./testapi/migrations
python3 manage.py migrate
python3 manage.py makemigrations testapi
python3 manage.py migrate testapi
python3 manage.py loaddata users
python3 manage.py loaddata tokens


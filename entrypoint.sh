#!/bin/sh
echo "Performing Pre-req tasks"
python manage.py makemigrations
echo "Applying Database Migrations"
python manage.py migrate
echo "Run Django Server"
python manage.py runserver 0.0.0.0:8000
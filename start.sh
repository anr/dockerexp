#!/usr/bin/env sh

#flask run -h 0.0.0.0 -p 80
gunicorn --reload -w 2 -b 0.0.0.0:80 app:app

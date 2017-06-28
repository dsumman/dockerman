#!/bin/bash

if [ -z "$NODE_ENV" ]; then
    export NODE_ENV=development
fi

cd /var/www
npm install

cd /var/www
pm2 start -x $APP --name="app" --no-daemon --watch


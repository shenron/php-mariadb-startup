#!/bin/bash

# script to download minimum files in current project

mkdir config
wget https://raw.githubusercontent.com/shenron/php-mariadb-startup/master/config/nginx/default.conf -P ./config/nginx
wget https://raw.githubusercontent.com/shenron/php-mariadb-startup/master/.gitignore
wget https://raw.githubusercontent.com/shenron/php-mariadb-startup/master/docker-compose.yml
wget https://raw.githubusercontent.com/shenron/php-mariadb-startup/master/start.sh
wget https://raw.githubusercontent.com/shenron/php-mariadb-startup/master/stop.sh

chmod +x ./start.sh
chmod +x ./stop.sh

if [ ! -f ./index.php ]; then
    wget https://raw.githubusercontent.com/shenron/php-mariadb-startup/master/src/index.php
fi

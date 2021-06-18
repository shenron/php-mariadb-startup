#!/bin/bash

# script to download minimum files in current project

mkdir -p config/nginx

curl https://raw.githubusercontent.com/shenron/php-mariadb-startup/master/config/nginx/default.conf --output ./config/nginx/default.conf

# download and concat .gitignore
gitignore=$(curl https://raw.githubusercontent.com/shenron/php-mariadb-startup/master/.gitignore)

echo $gitignore >> .gitignore

curl https://raw.githubusercontent.com/shenron/php-mariadb-startup/master/docker-compose.yml --output ./docker-compose.yml

curl https://raw.githubusercontent.com/shenron/php-mariadb-startup/master/start.sh --output ./start.sh

curl https://raw.githubusercontent.com/shenron/php-mariadb-startup/master/stop.sh --output ./stop.sh

if [ ! -f ./index.php ]; then
    curl https://raw.githubusercontent.com/shenron/php-mariadb-startup/master/src/index.php --output ./index.php
fi

chmod +x ./start.sh

chmod +x ./stop.sh

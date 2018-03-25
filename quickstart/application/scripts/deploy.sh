#!/bin/bash

./install.sh
yum install php56-devel -y
wget -P ~/ https://github.com/phpredis/phpredis/archive/develop.zip
cd ~/
unzip develop.zip
cd phpredis-develop
phpize
./configure
make && make install
echo extension=redis.so > /etc/php-5.6.d/30-redis.ini


#How to deploy

1. Clone this repository to '/var/www/html/pincommerce' using following command:
~~
git clone https://github.com/liangdev/shopinterest.git '/var/www/html/pincommerce'
~~
2. Change current directory to /var/www/html/pincommerce/quickstart/application/scripts and invoke *install.sh*
3. Install php-devel with following command:
~~
yum install php56-devel
~~
4. Clone or download zip file and unzip from https://github.com/phpredis/phpredis/.
5. Change to phpredis's directory, and run follow command to compile and install.
~~
phpize
./configure [--enable-redis-igbinary]
make && make install
~~
6. Create a new file named 30-redis.ini under directory /etc/php-5.6.d/  with following content:
~~
extension=redis.so
~~
7. Add your IP address into $whitelist in quickstart/public/index.php line 10.
8. As redis connection is not using in quickstart/public/index.php, comment out line 122.

#How to deploy

1. Clone this repository to '/var/www/html/pincommerce' using following command:
~~
git clone https://github.com/liangdev/shopinterest.git '/var/www/html/pincommerce'
~~
2. Change current directory to /var/www/html/pincommerce/quickstart/application/scripts and invoke *deploy.sh*
3. Add your IP address into $whitelist in quickstart/public/index.php line 10.
4. As redis connection is not using in quickstart/public/index.php, comment out line 122.

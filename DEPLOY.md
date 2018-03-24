#部署步骤

1.将项目文件放到'/var/www/html/pincommerce'下，执行install.sh。
2.安装php-devel，'yum install php56-devel'。
3.从https://github.com/phpredis/phpredis/下载redis扩展源代码并解压。
4.进入解压后的源码目录，执行如下命令：
~~
phpize
./configure [--enable-redis-igbinary]
make && make install
~~
5.在/etc/php-5.6.d/目录下增加文件30-redis.ini，内容如下：
~~
extension=redis.so
~~


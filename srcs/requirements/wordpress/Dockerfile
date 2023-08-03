FROM debian:buster
RUN mkdir -p /var/www/html/wordpress 
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y curl \
	php \
	php-fpm \
	php-mysql \
	php-mysqli \
	mariadb-client \
 	&& curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp
EXPOSE 9000
COPY /tools/my_entrypoint.sh /var/www/html/wordpress
COPY /tools/www.conf /etc/php/7.3/fpm/pool.d/www.conf
CMD ["sh", "/var/www/html/wordpress/my_entrypoint.sh" ]

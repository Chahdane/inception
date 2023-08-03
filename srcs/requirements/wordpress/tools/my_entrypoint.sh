cd /var/www/html/wordpress
wp core download  --path="/var/www/html/wordpress" --allow-root
wp config create --path="/var/www/html/wordpress" --allow-root --dbname=$MYSQL_DB_DATABASE --dbuser=$MYSQL_DB_USER --dbpass=$MYSQL_DB_USER_PASSWORD --dbhost=$MYSQL_DB_HOST --dbprefix=wp_
wp core install --path="/var/www/html/wordpress" --allow-root --url=$DOMAIN_NAME --title="$WP_TITLE" --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PD --admin_email=$WP_ADMIN_EMAIL
wp user create --path="/var/www/html/wordpress" --allow-root $WP_USER $WP_USER_EMAIL --user_pass=$WP_USER_PD
chown www-data:www-data /var/www/html/wordpress/wp-content/uploads -R
mkdir -p /run/php/
php-fpm7.3 -F 
FROM debian:buster
ARG MYSQL_DB_DATABASE MYSQL_DB_ROOT_PASSWORD MYSQL_DB_USER MYSQL_DB_USER_PASSWORD 
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y mariadb-server
RUN mkdir -p /var/run/mysql
RUN chown -R mysql:mysql /var/run/mysql
RUN service mysql start \
&&  mysql -u root -e   "CREATE DATABASE IF NOT EXISTS $MYSQL_DB_DATABASE; \
                        ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_DB_ROOT_PASSWORD'; \
                        GRANT ALL PRIVILEGES ON $MYSQL_DB_DATABASE.* TO '$MYSQL_DB_USER'@'%' IDENTIFIED BY '$MYSQL_DB_USER_PASSWORD'; \
                        FLUSH PRIVILEGES;"

COPY ./conf/50-server.cnf ./etc/mysql/mariadb.conf.d/50-server.cnf
EXPOSE 3306
CMD ["mysqld", "--bind-address=0.0.0.0"]



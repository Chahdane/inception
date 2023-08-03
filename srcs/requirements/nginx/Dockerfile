FROM debian:buster
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y nginx \
	openssl
RUN openssl req -x509 -newkey rsa:2048 -sha256 -days 256 -nodes -subj /C=MA/L=BG/O=1337 \
	-keyout /etc/ssl/achahdan.42.fr.key \
	-out /etc/ssl/achahdan.42.fr.crt;
COPY /conf/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 443 
CMD ["nginx", "-g", "daemon off;"]	

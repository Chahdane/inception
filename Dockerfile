FROM nginx

COPY index.html /usr/share/nginx/html
COPY server.crt /etc/nginx/certs/server.crt
COPY server.key /etc/nginx/certs/server.key

COPY nginx.conf /etc/nginx/nginx.conf

RUN    openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
       -out /etc/nginx/certs/server.crt \
       -keyout /etc/nginx/certs/server.key \
       -subj "/C=MA/ST=MA/L=BG/O=1337/OU=achahdan/CN=chahdan/"


EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]

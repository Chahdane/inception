FROM nginx

COPY index.html /usr/share/nginx/html

COPY server.crt /etc/nginx/certs/server.crt
COPY server.key /etc/nginx/certs/server.key

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443


#need to edit /etc/hosts
CMD ["nginx", "-g", "daemon off;"]

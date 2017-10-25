FROM nginx:stable-alpine

EXPOSE 80

ADD nginx.conf /etc/nginx/nginx.conf
ADD sites-enabled /etc/nginx/sites-enabled
ADD locations /etc/nginx/locations
ADD servers /etc/nginx/servers
ADD cert /etc/nginx/cert
RUN mkdir /etc/nginx/logs

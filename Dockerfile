FROM nginx:stable-alpine

EXPOSE 80

ADD . /etc/nginx

FROM alpine:latest

MAINTAINER alex <alexwhen@gmail.com>

RUN mkdir -p /run/nginx
RUN mkdir -p /usr/share/nginx/html
RUN apk --update add nginx

COPY 2048/ /usr/share/nginx/html/
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

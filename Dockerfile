FROM    node:10-alpine as builder
RUN     mkdir /var/www/html/frontend
COPY    package-lock.json .
COPY    package.json   .
COPY    src src
COPY    build build
COPY    config config

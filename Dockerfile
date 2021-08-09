FROM    node:10-alpine as builder
RUN     mkdir -p /var/www/html/frontend
WORKDIR  /var/www/html/frontend
COPY    package-lock.json .
COPY    package.json   .
COPY    src src
COPY    build build
COPY    config config
RUN     npm install
RUN     npm run build


FROM    node:10-alpine as builder
RUN     mkdir -p /var/www/html/frontend
COPY    package-lock.json /var/www/html/frontend/
COPY    package.json   /var/www/html/frontend/
COPY    src src   /var/www/html/frontend/
COPY    build build /var/www/html/frontend/
COPY    config config /var/www/html/frontend/

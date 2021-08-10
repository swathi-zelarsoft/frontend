FROM    node:8-alpine as builder
RUN     mkdir -p /frontend
WORKDIR  /frontend
COPY    package-lock.json .
COPY    package.json   .
COPY    src src
COPY    build build
COPY    config config
COPY    index.html .
RUN     npm install
RUN     npm run build
FROM    nginx
RUN     mkdir -p /var/www/html/frontend
COPY   --from=builder /frontend /var/www/html/frontend
COPY    todo.conf /etc/nginx/conf.d/default.conf


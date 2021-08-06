FROM        node:8-alpine as Base
RUN         mkdir /app
WORKDIR     /app
COPY        *  /app/
RUN         npm install
RUN         npm run build
FROM        nginx:1.21.1
RUN         mkdir -p /var/www/html
COPY        --from=base /app/dist /var/www/html
COPY        todo.conf /etc/nginx/conf.d/default.conf

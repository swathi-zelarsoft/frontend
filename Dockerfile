FROM        node as Base
RUN         mkdir /app
WORKDIR     /app
COPY        *  .
RUN         npm install
RUN         npm run build
FROM        nginx
RUN         mkdir -p /var/www/html
COPY        static /var/www/html
COPY        roboshop-docker.conf /etc/nginx/conf.d/default.conf
COPY        nginx.conf  /etc/nginx/nginx.conf

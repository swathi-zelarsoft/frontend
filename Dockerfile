FROM        node as Base
RUN         mkdir /app
WORKDIR     /app
COPY        *  /app/
RUN         npm install
RUN         npm run build
FROM        nginx
RUN         mkdir -p /var/www/html
COPY        --from=base /app/dist /var/www/html
COPY        todo.conf /etc/nginx/conf.d/default.conf

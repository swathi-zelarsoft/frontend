FROM    node:10-alpine as builder
RUN     mkdir /app
COPY    *    /app/

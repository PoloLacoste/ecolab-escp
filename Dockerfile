FROM node:15 as builder

WORKDIR /usr/src/app

COPY ./ecolab-climat ./ecolab-climat

COPY ./ecolab-data ./ecolab-data

WORKDIR /usr/src/app/ecolab-climat

RUN yarn

RUN yarn run compile

FROM nginx as prod

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/ecolab-climat/dist .

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
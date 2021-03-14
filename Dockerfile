FROM node:15 as builder

WORKDIR /usr/src/app

COPY ./nosgestesclimat-site ./nosgestesclimat-site

COPY ./nosgestesclimat ./nosgestesclimat

WORKDIR /usr/src/app/ecolab-climat

RUN yarn

RUN yarn run compile

FROM nginx as prod

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/nosgestesclimat-site/dist .

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
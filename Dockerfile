FROM node:15

WORKDIR /usr/src/app

RUN git clone https://github.com/PoloLacoste/ecolab-climat.git

RUN git clone https://github.com/PoloLacoste/ecolab-data.git

WORKDIR /usr/src/app/ecolab-climat

RUN npm install -g yarn

RUN yarn

CMD ["yarn", "start"]
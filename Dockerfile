FROM node:12

WORKDIR /usr/src/app

COPY rollup.config.js ./
COPY package*.json ./

RUN npm install

COPY . ./src
COPY ./public ./public

RUN npm install

EXPOSE 3000

ENV HOST=0.0.0.0

CMD npm start
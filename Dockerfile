FROM node:14-stretch
LABEL org.opencontainers.image.source https://github.com/anthager/its-always-sunny-in-gothenburg

WORKDIR /usr/app

COPY package.json ./
COPY yarn.lock ./

RUN yarn install

COPY . ./

RUN yarn build

CMD [ "yarn", "start" ]


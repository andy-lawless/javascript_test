FROM node:20

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./my-aop/

USER node

RUN npm install

COPY --chown=node:node . .

COPY --chown=node:node . .


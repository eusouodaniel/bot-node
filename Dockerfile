FROM node:10-alpine

WORKDIR /usr/app
COPY package.json package.lock.json yarn.lock ./

RUN yarn

COPY . .

COPY --chown=node:node . .

USER node

EXPOSE 3000

CMD ["yarn", "start"]
FROM alpine:3.20

RUN apk add --update nodejs npm

RUN addgroup -S node && adduser -S node -G node

USER node

RUN mkdir /home/node/code

WORKDIR /home/node/code

COPY --chown=node:node package*.json ./

RUN npm ci

COPY --chown=node:node . .

CMD ["node", "index.js"]

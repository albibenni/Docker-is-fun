FROM alpine:3.20

RUN apk add --update nodejs npm

RUN addgroup -S node && adduser -S node -G node

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

USER node

RUN mkdir /home/node/code

WORKDIR /home/node/code

COPY --chown=node:node package.json pnpm-lock.yaml ./

RUN pnpm install --frozen-lockfile

COPY --chown=node:node . .

CMD ["node", "index.js"]

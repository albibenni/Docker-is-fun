FROM node:20
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

USER node

WORKDIR /home/node/code

COPY --chown=node:node . .

RUN pnpm install --frozen-lockfile

CMD ["node", "index.js"]

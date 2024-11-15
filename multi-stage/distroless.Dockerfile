FROM node:20 as node-build
WORKDIR /build
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable
COPY --chown=node:node package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile
COPY . .




# prod step
FROM gcr.io/distroless/nodejs20
COPY --from=node-build --chown=node:node /build /app
WORKDIR /app
CMD ["index.js"]

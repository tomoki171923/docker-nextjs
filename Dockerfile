# base node image
FROM node:16.4-slim AS base
WORKDIR /usr/src/app
RUN apt update \
    && apt install -y libssl-dev \
    && npm cache clean --force \
    && npm install -g npm
    
ENV HOST 0.0.0.0
EXPOSE 3000


# develop mode
FROM base AS dev
COPY app /usr/src/app
RUN npm install
CMD ["npm", "run", "dev"]


# builder
FROM base AS builder
COPY app /usr/src/app
RUN npm install && npm run build
RUN npm run build


# production mode
FROM builder AS prod
ENV NODE_ENV=production
COPY --from=builder /usr/src/app/public ./public
COPY --from=builder /usr/src/app/_next ./_next
CMD ["npm", "run" ,"start"]

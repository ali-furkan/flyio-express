FROM node:alpine

WORKDIR /app

COPY package.json .

RUN npm ci

COPY node_modules package-lock.json ./

ENV NODE_ENV=production
ENV PORT=8080

CMD [ "npm","start" ]
FROM node:alpine

WORKDIR /app

ENV NODE_ENV=production
ENV PORT=8080

COPY package.json .

RUN npm i

COPY index.js .

CMD [ "npm","start" ]
FROM node:20-alpine

COPY public  /mtexpress/
COPY views /mtexpress/
COPY package.json

WORKDIR /mtexpress

RUN npm install

CMD ["node", "index.js"]
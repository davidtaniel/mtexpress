FROM node:20-alpine

COPY public  /mtexpress/
COPY views /mtexpress/
COPY package.json /mtexpress/
COPY indes.js /mtexpress/

WORKDIR /mtexpress

RUN npm install

CMD ["node", "index.js"]
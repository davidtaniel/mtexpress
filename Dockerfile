FROM node:20-alpine

COPY public  /mtexpress/public/
COPY views /mtexpress/views/
COPY package.json /mtexpress/
COPY index.js /mtexpress/

WORKDIR /mtexpress

RUN npm install

CMD ["node", "index.js"]
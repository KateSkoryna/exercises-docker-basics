FROM ubuntu:24.04

RUN apt-get update && apt-get install -y curl

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash

RUN apt-get install -y nodejs

WORKDIR /usr/src/app

EXPOSE 5001

COPY package*.json ./

RUN npm install

RUN npm install -g serve

COPY . .

RUN npm run build

CMD ["serve", "-s", "-l", "5001", "build"]

FROM node:18

RUN apt-get update -y
RUN apt-get upgrade -y

WORKDIR /codechat

COPY ./package.json .

RUN npm install

COPY . .

CMD [ "node", "./dist/src/main.js" ]
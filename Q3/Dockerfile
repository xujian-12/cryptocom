FROM node:14

WORKDIR /home/node/app

COPY src ./
COPY package*.json ./
COPY .env ./

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]

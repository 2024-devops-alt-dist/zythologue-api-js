FROM node:21-alpine

WORKDIR /app

COPY package*.json .

RUN chown -R node:node .
RUN npm install
RUN npm i --save-dev @types/cors

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "dev" ]
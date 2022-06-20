FROM node:16.14-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY public/ ./public
COPY src/ ./src

EXPOSE 3000

CMD ["npm", "start"]
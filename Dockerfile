FROM node:10
WORKDIR /app

COPY package.json .
COPY yarn.lock .

RUN yarn install
COPY . .

CMD ["yarn", "start"]

FROM node:lts-alpine

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN yarn install --frozen-lockfile

COPY . .

CMD ["npm", "dev"]

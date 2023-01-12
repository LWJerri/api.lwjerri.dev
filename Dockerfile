FROM node:18-slim

RUN apt update -y
RUN apt-get install build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev openssl -y

WORKDIR /app

RUN npm i -g pnpm

COPY package.json pnpm-lock.yaml .npmrc ./

RUN pnpm install

COPY . /app
COPY prisma/ ./prisma

RUN pnpm prisma generate
RUN pnpm build

CMD ["pnpm", "start"]